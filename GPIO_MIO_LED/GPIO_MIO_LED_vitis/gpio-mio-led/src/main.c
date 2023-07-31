#include "stdio.h"
#include "xparameters.h"
#include "xgpiops.h"
#include "sleep.h"

#define GPIO_DEVICE_ID XPAR_XGPIOPS_0_DEVICE_ID

#define MIO0_LED 0

XGpioPs_Config *ConfigPtr;
XGpioPs Gpio;

int main()
{
	printf("GPIO MIO LED TEST!\n");
	/* 初始化GPIO的驱动 */
	// This function looks for the device configuration based on the unique device ID.
	ConfigPtr = XGpioPs_LookupConfig(GPIO_DEVICE_ID);
	// This function initializes a XGpioPs instance/driver.
	XGpioPs_CfgInitialize(&Gpio, ConfigPtr, ConfigPtr->BaseAddr);

	/* 设置GPIO的方向设置为输出 */
	XGpioPs_SetDirectionPin(&Gpio, MIO0_LED, 1);

	/* 设置输出使能 */
	XGpioPs_SetOutputEnablePin(&Gpio, MIO0_LED, 1);

	/* 写数据到GPIO的输出引脚 */
	XGpioPs_WritePin(&Gpio, MIO0_LED, 1);

	/* led闪烁 */
	while(1)
	{
		/* 点亮 */
		XGpioPs_WritePin(&Gpio, MIO0_LED, 1);
		sleep(1);
		/* 熄灭 */
		XGpioPs_WritePin(&Gpio, MIO0_LED, 0);
		sleep(1);
	}
	return 0;
}
