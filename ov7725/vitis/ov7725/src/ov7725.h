#ifndef __OV7725_H__
#define __OV7725_H__

#include "xparameters.h"
#include "xgpiops.h"
#include "sleep.h"

#define OV_GPIO_DEVICE_ID XPAR_XGPIOPS_0_DEVICE_ID

#define EMIO_SGM  	58
#define EMIO_RST	59
#define EMIO_SCL	60
#define EMIO_SDA 	61

#define  OV7725_DEV_ID    0x42   //OV7725 SCCBÆ÷¼þµØÖ·

void emio_init(void);
void sccb_write_reg8(u8 addr , u8 data);
u8 sccb_read_reg8(u8 addr );
u8 ov7725_init(void);


#endif
