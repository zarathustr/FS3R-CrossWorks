#include "StartUP.h"
#include "eig3D.h"
#include "Umeyama.h"
#include "micros.h"
#include <__cross_studio_io.h>

osThreadId defaultTaskHandle;


double getRandom()
{
    int32_t random;
    HAL_RNG_GenerateRandomNumber(&hrng, (uint32_t *) &random);
    return (double)random / (double)RAND_MAX / 1e6;
}

Vector3d getRandomVector()
{
	double e0 = getRandom();
	double e1 = getRandom();
	double e2 = getRandom();

	Vector3d v(e0, e1, e2);
	v.normalize();
	return v;
}

double EstimationError(const vector<Vector3d>& P, const vector<Vector3d>& Q, const Matrix3d& R, Vector3d& T)
{
	int N = P.size();
	double error = 0;
	for (int i = 0; i < N; ++i)
	{
		error += (R.transpose() * Q[i] + T - P[i]).norm() * (R.transpose() * Q[i] + T - P[i]).norm();
	}
	return error / N;
}

Matrix3d R_umeyama_eigen, R_eig3D_eig, R_eig3D_symbolic;
Vector3d T_umeyama_eigen, T_eig3D_eig, T_eig3D_symbolic;
uint64_t counter = 0;
const double snr = 10.0, reference_scale = 10.0, T_scale = 10.0;
const int loopNum = 10, FA3R_num = 5, step = 300;
double time_umeyama_eigen[loopNum + 1],
       time_eig3D_eig[loopNum + 1], 
       time_eig3D_symbolic[loopNum + 1];

void time_evaluation()
{
        double tt;
	for (int i = 1; i <= loopNum; ++i) {

		int vecNum = i * step;
		vector<Vector3d> pointsOriginal;
		vector<Vector3d> pointsTransformed;

		for(int j = 0 ; j < vecNum; ++j)
		{
			Vector3d v = getRandomVector();
			pointsOriginal.push_back(v * reference_scale);
		}

		Vector3d axis = getRandomVector();
		Vector3d T = getRandomVector() * T_scale;
		double angle = 2 * M_PI * getRandom();
		Quaterniond Q;
		Q = AngleAxisd(angle, axis);

		for(int j = 0 ; j < vecNum; ++j)
		{
			Vector3d tmp = Q._transformVector(pointsOriginal[j]) + (1.0 / snr) * (reference_scale + T_scale) * getRandomVector() + T;
			pointsTransformed.push_back(tmp);
		}

		Matrix3d M;
		M.setZero();
		Vector3d mean_X, mean_Y;

		int nn = pointsTransformed.size();
                mean_X.setZero();
                mean_Y.setZero();

                for (int j = 0; j < nn; ++j)
                {
                    mean_X = mean_X + pointsTransformed[j];
                    mean_Y = mean_Y + pointsOriginal[j];
                }
                mean_X = mean_X / nn;
                mean_Y = mean_Y / nn;

                for (int j = 0; j < nn; ++j)
                {
                    M = M + (pointsOriginal[j] - mean_Y) * ((pointsTransformed[j] - mean_X).transpose());
                }
                M = M / nn;

		for (int j = 0; j < vecNum; ++j)
                {
			Umeyama(nullptr, nullptr, &M, &R_umeyama_eigen, &T_umeyama_eigen, tt);
                        time_umeyama_eigen[i] += tt;
                        if(tt < 0)
                            debug_printf("Error!\n");
                }

		for (int j = 0; j < vecNum; ++j)
                {
			eig3D_eig(nullptr, nullptr, &M, &R_eig3D_eig, &T_eig3D_eig, tt);
                        time_eig3D_eig[i] += tt;
                        if(tt < 0)
                            debug_printf("Error!\n");
                }

		for (int j = 0; j < vecNum; ++j)
                {
			eig3D_symbolic(nullptr, nullptr, &M, &R_eig3D_symbolic, &T_eig3D_symbolic, tt);
                        time_eig3D_symbolic[i] += tt;
                        if(tt < 0)
                            debug_printf("Error!\n");
                }
  
                
                debug_printf("{%d}&{%5.8f}&{%5.8f}&{%5.8f} \\\\ \n", i, 
                                        time_umeyama_eigen[i] *1e-6,
                                        time_eig3D_eig[i] *1e-6,
                                        time_eig3D_symbolic[i] *1e-6);
	}
}

                                                               
int main(void)
{
    StartUP();
    
    InitMicros();
    
    time_evaluation();
}


             
void StartDefaultTask(void const * argument)
{

    
}