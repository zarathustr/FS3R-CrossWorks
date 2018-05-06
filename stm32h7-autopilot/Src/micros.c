#include "StartUP.h"

double Micros(void)
{
  return(((double)(TIM5->CNT)) * (1e-6));
}


void delay_us(uint32_t nTime)
{	

  for (int i=0;i<100000;++i)
  {
  }
}

void delay_ms(int nms)
{	 
  osDelay(nms);

}   


void InitMicros(void){
        __HAL_RCC_TIM5_CLK_DISABLE();
        __HAL_RCC_TIM5_CLK_ENABLE();
        
        HAL_NVIC_SetPriority(TIM5_IRQn, 0, 0);
        HAL_NVIC_EnableIRQ(TIM5_IRQn);
        
	TIM5->CR1 = 0x0080; 
	TIM5->CR2 = 0x0000;
	TIM5->CNT = 0x0000;
	TIM5->ARR = 0xFFFFFFFF;
	TIM5->PSC = 200 - 1;	
	TIM5->EGR = 0x0001;
	TIM5->CR1 |= 0x0001;
        TIM5->DIER |= 1 << 0;
}
   
   

