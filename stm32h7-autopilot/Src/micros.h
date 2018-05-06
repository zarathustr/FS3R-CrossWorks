#ifndef DELAY_H
#define DELAY_H

#include "StartUP.h"

extern uint32_t tim5_cycles;

#define micros()                (((uint64_t)(TIM5->CNT))+0x00000000FFFFFFFF*((uint64_t)(tim5_cycles-1)))
#define millis()                (micros()/1000)
#define elapsed_time(x)         ((uint64_t)(micros()-x))


#ifdef __cplusplus
extern "C" {
#endif
  
void delay_us(uint32_t nus);
void delay_ms(int nms);
void InitMicros(void);
void delay_init(uint8_t SYSCLK);
double Micros(void);

#ifdef __cplusplus
}
#endif


#endif
