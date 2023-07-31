//////////////////////////////////////////////////////////////////////////////////
//本程序只供学习使用，未经作者许可，不得用于其它任何用途
//测试硬件：单片机STM32F103ZET6,正点原子ELITE STM32开发板,主频72MHZ，晶振12MHZ
//QDtech-TFT液晶驱动 for STM32 IO模拟
//xiao冯@ShenZhen QDtech co.,LTD
//公司网站:www.qdtft.com
//淘宝网站：http://qdtech.taobao.com
//wiki技术网站：http://www.lcdwiki.com
//我司提供技术支持，任何技术问题欢迎随时交流学习
//固话(传真) :+86 0755-23594567
//手机:15989313508（冯工）
//邮箱:lcdwiki01@gmail.com    support@lcdwiki.com    goodtft@163.com
//技术支持QQ:3002773612  3002778157
//技术交流QQ群:324828016
//创建日期:2018/08/09
//版本：V1.0
//版权所有，盗版必究。
//Copyright(C) 深圳市全动电子技术有限公司 2018-2028
//All rights reserved
/****************************************************************************************************
//=========================================电源接线================================================//
//     LCD模块                STM32单片机
//      VCC          接        DC5V/3.3V      //电源
//      GND          接          GND          //电源地
//=======================================液晶屏数据线接线==========================================//
//本模块默认数据总线类型为SPI总线
//     LCD模块                STM32单片机
//    SDI(MOSI)      接          PB15         //液晶屏SPI总线数据写信号
//    SDO(MISO)      接          PB14         //液晶屏SPI总线数据读信号，如果不需要读，可以不接线
//=======================================液晶屏控制线接线==========================================//
//     LCD模块 					      STM32单片机
//       LED         接          PB9          //液晶屏背光控制信号，如果不需要控制，接5V或3.3V
//       SCK         接          PB13         //液晶屏SPI总线时钟信号
//      DC/RS        接          PB10         //液晶屏数据/命令控制信号
//       RST         接          PB12         //液晶屏复位控制信号
//       CS          接          PB11         //液晶屏片选控制信号
//=========================================触摸屏触接线=========================================//
//如果模块不带触摸功能或者带有触摸功能，但是不需要触摸功能，则不需要进行触摸屏接线
//	   LCD模块                STM32单片机
//      T_IRQ        接          PC10         //触摸屏触摸中断信号
//      T_DO         接          PC2          //触摸屏SPI总线读信号
//      T_DIN        接          PC3          //触摸屏SPI总线写信号
//      T_CS         接          PC13         //触摸屏片选控制信号
//      T_CLK        接          PC0          //触摸屏SPI总线时钟信号
**************************************************************************************************/
 /* @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, QD electronic SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
**************************************************************************************************/
#include "lcd.h"

_lcd_dev lcddev;

XGpioPs_Config *ConfigPtr;
XGpioPs Gpio;

/*****************************************************************************
 * @name       :void LCD_GPIOInit(void)
 * @date       :2018-08-09
 * @function   :Initialization LCD screen GPIO
 * @parameters :None
 * @retvalue   :None
******************************************************************************/
void LCD_GPIOInit(void)
{
	/* 初始化GPIO的驱动 */
	// This function looks for the device configuration based on the unique device ID.
	ConfigPtr = XGpioPs_LookupConfig(GPIO_DEVICE_ID);
	// This function initializes a XGpioPs instance/driver.
	XGpioPs_CfgInitialize(&Gpio, ConfigPtr, ConfigPtr->BaseAddr);

	/* 设置GPIO的方向*/
	XGpioPs_SetDirectionPin(&Gpio, EMIO_LCD_CS, 1);
	XGpioPs_SetDirectionPin(&Gpio, EMIO_LCD_RESET, 1);
	XGpioPs_SetDirectionPin(&Gpio, EMIO_LCD_DC, 1);
	XGpioPs_SetDirectionPin(&Gpio, EMIO_LCD_MOSI, 1);
	XGpioPs_SetDirectionPin(&Gpio, EMIO_LCD_SCK, 1);
	XGpioPs_SetDirectionPin(&Gpio, EMIO_LCD_LED, 1);

	/* 设置输出使能 */
	XGpioPs_SetOutputEnablePin(&Gpio, EMIO_LCD_CS, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, EMIO_LCD_RESET, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, EMIO_LCD_DC, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, EMIO_LCD_MOSI, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, EMIO_LCD_SCK, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, EMIO_LCD_LED, 1);

	XGpioPs_WritePin(&Gpio, EMIO_LCD_CS, 1);
	XGpioPs_WritePin(&Gpio, EMIO_LCD_RESET, 1);
	XGpioPs_WritePin(&Gpio, EMIO_LCD_DC, 1);
	XGpioPs_WritePin(&Gpio, EMIO_LCD_MOSI, 1);
	XGpioPs_WritePin(&Gpio, EMIO_LCD_SCK, 1);
	XGpioPs_WritePin(&Gpio, EMIO_LCD_LED, 1);
}


/*****************************************************************************
 * @name       :void LCD_RESET(void)
 * @date       :2018-08-09
 * @function   :Reset LCD screen
 * @parameters :None
 * @retvalue   :None
******************************************************************************/
void LCD_RESET(void)
{
	LCD_RST_CLR;
	usleep(100000);
	LCD_RST_SET;
	usleep(50000);
}

/*****************************************************************************
 * @name       :void LCD_WR_Byte(void)
 * @date       :2018-08-09
 * @function   :Reset LCD screen
 * @parameters :None
 * @retvalue   :None
******************************************************************************/
//flag: 0:c 1:data
void LCD_WR_Byte(u8 data, u8 flag)
{
	int i;
	XGpioPs_WritePin(&Gpio, EMIO_LCD_CS, 0);
	XGpioPs_WritePin(&Gpio, EMIO_LCD_DC, flag);
//	usleep(1);
	for(i=7; i>=0; i--)
	{
		XGpioPs_WritePin(&Gpio, EMIO_LCD_SCK, 0);
		XGpioPs_WritePin(&Gpio, EMIO_LCD_MOSI, (data&(1<<i))>>i);
//		usleep(1);
		XGpioPs_WritePin(&Gpio, EMIO_LCD_SCK, 1);
//		usleep(1);
	}
	XGpioPs_WritePin(&Gpio, EMIO_LCD_SCK, 1);
}

#define LCD_WR_REG(REG) 	LCD_WR_Byte(REG, 0)
#define LCD_WR_DATA(DATA) 	LCD_WR_Byte(DATA, 1)


/*****************************************************************************
 * @name       :void Lcd_WriteData_16Bit(u16 Data)
 * @date       :2018-08-09
 * @function   :Write an 16-bit command to the LCD screen
 * @parameters :Data:Data to be written
 * @retvalue   :None
******************************************************************************/
void Lcd_WriteData_16Bit(u16 Data)
{
	int i;
   LCD_CS_CLR;
   LCD_RS_SET;
   usleep(1);
   for(i=15; i>=0; i--)
   {
	   XGpioPs_WritePin(&Gpio, EMIO_LCD_SCK, 0);
	   XGpioPs_WritePin(&Gpio, EMIO_LCD_MOSI, (Data&(1<<i))>>i);
//	   usleep(1);
	   XGpioPs_WritePin(&Gpio, EMIO_LCD_SCK, 1);
//	   usleep(1);
   }
   LCD_CS_SET;
}


/*****************************************************************************
 * @name       :void LCD_WriteReg(u8 LCD_Reg, u16 LCD_RegValue)
 * @date       :2018-08-09
 * @function   :Write data into registers
 * @parameters :LCD_Reg:Register address
                LCD_RegValue:Data to be written
 * @retvalue   :None
******************************************************************************/
void LCD_WriteReg(u8 LCD_Reg, u16 LCD_RegValue)
{
	LCD_WR_REG(LCD_Reg);
	LCD_WR_DATA(LCD_RegValue);
}

/*****************************************************************************
 * @name       :void LCD_direction(u8 direction)
 * @date       :2018-08-09
 * @function   :Setting the display direction of LCD screen
 * @parameters :direction:0-0 degree
                          1-90 degree
													2-180 degree
													3-270 degree
 * @retvalue   :None
******************************************************************************/
void LCD_direction(u8 direction)
{
			lcddev.setxcmd=0x2A;
			lcddev.setycmd=0x2B;
			lcddev.wramcmd=0x2C;
	switch(direction){
		case 0:
			lcddev.width=LCD_W;
			lcddev.height=LCD_H;
			LCD_WriteReg(0x36,(1<<3)|(0<<6)|(0<<7));//BGR==1,MY==0,MX==0,MV==0
		break;
		case 1:
			lcddev.width=LCD_H;
			lcddev.height=LCD_W;
			LCD_WriteReg(0x36,(1<<3)|(0<<7)|(1<<6)|(1<<5));//BGR==1,MY==1,MX==0,MV==1
		break;
		case 2:
			lcddev.width=LCD_W;
			lcddev.height=LCD_H;
			LCD_WriteReg(0x36,(1<<3)|(1<<6)|(1<<7));//BGR==1,MY==0,MX==0,MV==0
		break;
		case 3:
			lcddev.width=LCD_H;
			lcddev.height=LCD_W;
			LCD_WriteReg(0x36,(1<<3)|(1<<7)|(1<<5));//BGR==1,MY==1,MX==0,MV==1
		break;
		default:break;
	}
}

/*****************************************************************************
 * @name       :void LCD_WriteRAM_Prepare(void)
 * @date       :2018-08-09
 * @function   :Write GRAM
 * @parameters :None
 * @retvalue   :None
******************************************************************************/
void LCD_WriteRAM_Prepare(void)
{
	LCD_WR_REG(lcddev.wramcmd);
}

/*****************************************************************************
 * @name       :void LCD_SetWindows(u16 xStar, u16 yStar,u16 xEnd,u16 yEnd)
 * @date       :2018-08-09
 * @function   :Setting LCD display window
 * @parameters :xStar:the bebinning x coordinate of the LCD display window
								yStar:the bebinning y coordinate of the LCD display window
								xEnd:the endning x coordinate of the LCD display window
								yEnd:the endning y coordinate of the LCD display window
 * @retvalue   :None
******************************************************************************/
void LCD_SetWindows(u16 xStar, u16 yStar,u16 xEnd,u16 yEnd)
{
	LCD_WR_REG(lcddev.setxcmd);
	LCD_WR_DATA(xStar>>8);
	LCD_WR_DATA(0x00FF&xStar);
	LCD_WR_DATA(xEnd>>8);
	LCD_WR_DATA(0x00FF&xEnd);

	LCD_WR_REG(lcddev.setycmd);
	LCD_WR_DATA(yStar>>8);
	LCD_WR_DATA(0x00FF&yStar);
	LCD_WR_DATA(yEnd>>8);
	LCD_WR_DATA(0x00FF&yEnd);

	LCD_WriteRAM_Prepare();	//开始写入GRAM
}

/*****************************************************************************
 * @name       :void LCD_Clear(u16 Color)
 * @date       :2018-08-09
 * @function   :Full screen filled LCD screen
 * @parameters :color:Filled color
 * @retvalue   :None
******************************************************************************/
void LCD_Clear(u16 Color)
{
  unsigned int i,m;
	LCD_SetWindows(0,0,lcddev.width-1,lcddev.height-1);
	LCD_CS_CLR;
	LCD_RS_SET;
	for(i=0;i<lcddev.height;i++)
	{
    for(m=0;m<lcddev.width;m++)
    {
			Lcd_WriteData_16Bit(Color);
		}
	}
	 LCD_CS_SET;
}


/*****************************************************************************
 * @name       :void LCD_Init(void)
 * @date       :2018-08-09
 * @function   :Initialization LCD screen
 * @parameters :None
 * @retvalue   :None
******************************************************************************/
void LCD_Init(void)
{
	LCD_GPIOInit();//LCD GPIO初始化
 	LCD_RESET(); //LCD 复位
//*************2.4inch ILI9341初始化**********//
	// Power control B
	LCD_WR_REG(0xCF);
	LCD_WR_DATA(0x00);
	LCD_WR_DATA(0xD9); //0xC1
	LCD_WR_DATA(0X30);
	// Power on sequence control
	LCD_WR_REG(0xED);
	LCD_WR_DATA(0x64);
	LCD_WR_DATA(0x03);
	LCD_WR_DATA(0X12);
	LCD_WR_DATA(0X81);
	// Driver timing control A
	LCD_WR_REG(0xE8);
	LCD_WR_DATA(0x85);
	LCD_WR_DATA(0x10);
	LCD_WR_DATA(0x7A);
	// Power control A
	LCD_WR_REG(0xCB);
	LCD_WR_DATA(0x39);
	LCD_WR_DATA(0x2C);
	LCD_WR_DATA(0x00);
	LCD_WR_DATA(0x34);
	LCD_WR_DATA(0x02);
	// Pump ratio control
	LCD_WR_REG(0xF7);
	LCD_WR_DATA(0x20);
	// Driver timing control B
	LCD_WR_REG(0xEA);
	LCD_WR_DATA(0x00);
	LCD_WR_DATA(0x00);
	// Power Control 1
	LCD_WR_REG(0xC0);    //Power control
	LCD_WR_DATA(0x1B);   //VRH[5:0]
	// Power Control 2
	LCD_WR_REG(0xC1);    //Power control
	LCD_WR_DATA(0x12);   //SAP[2:0];BT[3:0] 0x01
	// VCOM Control 1
	LCD_WR_REG(0xC5);    //VCM control
	LCD_WR_DATA(0x08); 	 //30
	LCD_WR_DATA(0x26); 	 //30
	// VCOM Control 2
	LCD_WR_REG(0xC7);    //VCM control2
	LCD_WR_DATA(0XB7);
	// Memory Access Control
	LCD_WR_REG(0x36);    // Memory Access Control
	LCD_WR_DATA(0x08);
	// COLMOD: Pixel Format Set
	LCD_WR_REG(0x3A);
	LCD_WR_DATA(0x55);
	// Frame Rate Control (In Normal Mode/Full Colors)
	LCD_WR_REG(0xB1);
	LCD_WR_DATA(0x00);
	LCD_WR_DATA(0x1A);
	// Display Function Control
	LCD_WR_REG(0xB6);    // Display Function Control
	LCD_WR_DATA(0x0A);
	LCD_WR_DATA(0xA2);
	// Enable 3G
	LCD_WR_REG(0xF2);    // 3Gamma Function Disable
	LCD_WR_DATA(0x00);
	// Gamma Set
	LCD_WR_REG(0x26);    //Gamma curve selected
	LCD_WR_DATA(0x01);
	// Positive Gamma Correction
	LCD_WR_REG(0xE0);    //Set Gamma
	LCD_WR_DATA(0x0F);
	LCD_WR_DATA(0x1D);
	LCD_WR_DATA(0x1A);
	LCD_WR_DATA(0x0A);
	LCD_WR_DATA(0x0D);
	LCD_WR_DATA(0x07);
	LCD_WR_DATA(0x49);
	LCD_WR_DATA(0X66);
	LCD_WR_DATA(0x3B);
	LCD_WR_DATA(0x07);
	LCD_WR_DATA(0x11);
	LCD_WR_DATA(0x01);
	LCD_WR_DATA(0x09);
	LCD_WR_DATA(0x05);
	LCD_WR_DATA(0x04);
	// Negative Gamma Correction
	LCD_WR_REG(0XE1);    //Set Gamma
	LCD_WR_DATA(0x00);
	LCD_WR_DATA(0x18);
	LCD_WR_DATA(0x1D);
	LCD_WR_DATA(0x02);
	LCD_WR_DATA(0x0F);
	LCD_WR_DATA(0x04);
	LCD_WR_DATA(0x36);
	LCD_WR_DATA(0x13);
	LCD_WR_DATA(0x4C);
	LCD_WR_DATA(0x07);
	LCD_WR_DATA(0x13);
	LCD_WR_DATA(0x0F);
	LCD_WR_DATA(0x2E);
	LCD_WR_DATA(0x2F);
	LCD_WR_DATA(0x05);
	// Page Address Set
	LCD_WR_REG(0x2B);
	LCD_WR_DATA(0x00);
	LCD_WR_DATA(0x00);
	LCD_WR_DATA(0x01);
	LCD_WR_DATA(0x3f);
	// Column Address Set
	LCD_WR_REG(0x2A);
	LCD_WR_DATA(0x00);
	LCD_WR_DATA(0x00);
	LCD_WR_DATA(0x00);
	LCD_WR_DATA(0xef);
	// Sleep Out 
	LCD_WR_REG(0x11); //Exit Sleep
	usleep(120000);
	// Display ON
	LCD_WR_REG(0x29); //display on

	LCD_direction(USE_HORIZONTAL);//设置LCD显示方向
	XGpioPs_WritePin(&Gpio, EMIO_LCD_LED, 1);//点亮背光
	LCD_Clear(WHITE);//清全屏白色
}
