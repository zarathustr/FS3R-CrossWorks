#include "Umeyama.h"
#include <stdint.h>
#include "micros.h"

void Umeyama(const vector<Vector3d>* P,
             const vector<Vector3d>* Q,
             Matrix3d * sigma,
             Matrix3d * rRes,
             Vector3d * tRes,
             double &time)
{
    Matrix3d * sigma_ = sigma;
    Vector3d mean_X, mean_Y;

    if(P != nullptr && Q != nullptr && sigma == nullptr)
    {
       sigma_ = new Matrix3d();
    
       int n = P->size();
       mean_X.setZero();
       mean_Y.setZero();

       for (int i = 0; i < n; ++i)
       {
          mean_X = mean_X + (*P)[i];
          mean_Y = mean_Y + (*Q)[i];
       }
       mean_X = mean_X / n;
       mean_Y = mean_Y / n;

       sigma_->setZero();

       for (int i = 0; i < n; ++i)
       {
          *sigma_ = *sigma_ + ((*Q)[i] - mean_Y) * (((*P)[i] - mean_X).transpose());
       }
       *sigma_ = *sigma_ / n;
    }


    uint64_t time1, time2;
    time1 = micros();


    JacobiSVD<Eigen::Matrix3d> svd(*sigma_, ComputeFullU | ComputeFullV);  
    *rRes = svd.matrixU() * svd.matrixV().transpose();
    if ((*rRes).determinant() < 0.)
    {
        Matrix3d tmpV = svd.matrixV().transpose();
        tmpV.row(2) *= -1.;
        (*rRes) = svd.matrixU() * tmpV;
    }

    *tRes = mean_X - (*rRes).transpose() * mean_Y;
    
    time2 = micros();
    time = (double)(time2 - time1);

    if(P != nullptr && Q != nullptr && sigma == nullptr)
        delete sigma_;
}

