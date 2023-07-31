#include "xil_printf.h"
#include "xparameters.h"
#include "xgpiops.h"
#include "sleep.h"
#include "lcd.h"

#define GPIO_DEVICE_ID XPAR_XGPIOPS_0_DEVICE_ID

#define EMIO_LED1 		54
#define EMIO_LED2 		55
#define EMIO_LED3 		56
#define EMIO_LED4 		57

XGpioPs_Config *LEDConfigPtr;
XGpioPs LEDGpio;

int main()
{
	u8 flag = 0;
	xil_printf("GPIO EMIO LED TEST!\n");

	/* 初始化GPIO的驱动 */
	// This function looks for the device configuration based on the unique device ID.
	LEDConfigPtr = XGpioPs_LookupConfig(GPIO_DEVICE_ID);
	// This function initializes a XGpioPs instance/driver.
	XGpioPs_CfgInitialize(&LEDGpio, LEDConfigPtr, LEDConfigPtr->BaseAddr);

	/* 设置GPIO的方向*/
	XGpioPs_SetDirectionPin(&LEDGpio, EMIO_LED1, 1);
	XGpioPs_SetDirectionPin(&LEDGpio, EMIO_LED2, 1);
	XGpioPs_SetDirectionPin(&LEDGpio, EMIO_LED3, 1);
	XGpioPs_SetDirectionPin(&LEDGpio, EMIO_LED4, 1);

	/* 设置输出使能 */
	XGpioPs_SetOutputEnablePin(&LEDGpio, EMIO_LED1, 1);
	XGpioPs_SetOutputEnablePin(&LEDGpio, EMIO_LED2, 1);
	XGpioPs_SetOutputEnablePin(&LEDGpio, EMIO_LED3, 1);
	XGpioPs_SetOutputEnablePin(&LEDGpio, EMIO_LED4, 1);

	XGpioPs_WritePin(&LEDGpio, EMIO_LED1, 1);
	XGpioPs_WritePin(&LEDGpio, EMIO_LED2, 1);
	XGpioPs_WritePin(&LEDGpio, EMIO_LED3, 1);
	XGpioPs_WritePin(&LEDGpio, EMIO_LED4, 1);

	LCD_Init();
	while(1)
	{
//		XGpioPs_WritePin(&LEDGpio, EMIO_LED1, 0);
//		XGpioPs_WritePin(&LEDGpio, EMIO_LED2, 0);
//		XGpioPs_WritePin(&LEDGpio, EMIO_LED3, 0);
//		XGpioPs_WritePin(&LEDGpio, EMIO_LED4, 0);
//		sleep(1);
//		XGpioPs_WritePin(&LEDGpio, EMIO_LED1, 1);
//		XGpioPs_WritePin(&LEDGpio, EMIO_LED2, 1);
//		XGpioPs_WritePin(&LEDGpio, EMIO_LED3, 1);
//		XGpioPs_WritePin(&LEDGpio, EMIO_LED4, 1);
//		sleep(1);
		if(flag == 0)
		{
			LCD_Clear(GRAY);
		}
		else if(flag == 1)
		{
			LCD_Clear(BRRED);
		}
		else if(flag == 2)
		{
			LCD_Clear(BROWN);
		}

		if(flag == 2)
		{
			flag = 0;
		}
		else flag ++;
		sleep(5);
	}

	return 0;
}
