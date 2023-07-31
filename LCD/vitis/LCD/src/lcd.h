//////////////////////////////////////////////////////////////////////////////////
//������ֻ��ѧϰʹ�ã�δ���������ɣ��������������κ���;
//����Ӳ������Ƭ��STM32F103ZET6,����ԭ��ELITE STM32������,��Ƶ72MHZ������12MHZ
//QDtech-TFTҺ������ for STM32 IOģ��
//xiao��@ShenZhen QDtech co.,LTD
//��˾��վ:www.qdtft.com
//�Ա���վ��http://qdtech.taobao.com
//wiki������վ��http://www.lcdwiki.com
//��˾�ṩ����֧�֣��κμ������⻶ӭ��ʱ����ѧϰ
//�̻�(����) :+86 0755-23594567
//�ֻ�:15989313508���빤��
//����:lcdwiki01@gmail.com    support@lcdwiki.com    goodtft@163.com
//����֧��QQ:3002773612  3002778157
//��������QQȺ:324828016
//��������:2018/08/09
//�汾��V1.0
//��Ȩ���У�����ؾ���
//Copyright(C) ������ȫ�����Ӽ������޹�˾ 2018-2028
//All rights reserved
/****************************************************************************************************
//=========================================��Դ����================================================//
//     LCDģ��                STM32��Ƭ��
//      VCC          ��        DC5V/3.3V      //��Դ
//      GND          ��          GND          //��Դ��
//=======================================Һ���������߽���==========================================//
//��ģ��Ĭ��������������ΪSPI����
//     LCDģ��                STM32��Ƭ��
//    SDI(MOSI)      ��          PB15         //Һ����SPI��������д�ź�
//    SDO(MISO)      ��          PB14         //Һ����SPI�������ݶ��źţ��������Ҫ�������Բ�����
//=======================================Һ���������߽���==========================================//
//     LCDģ�� 					      STM32��Ƭ��
//       LED         ��          PB9          //Һ������������źţ��������Ҫ���ƣ���5V��3.3V
//       SCK         ��          PB13         //Һ����SPI����ʱ���ź�
//      DC/RS        ��          PB10         //Һ��������/��������ź�
//       RST         ��          PB12         //Һ������λ�����ź�
//       CS          ��          PB11         //Һ����Ƭѡ�����ź�
//=========================================������������=========================================//
//���ģ�鲻���������ܻ��ߴ��д������ܣ����ǲ���Ҫ�������ܣ�����Ҫ���д���������
//	   LCDģ��                STM32��Ƭ��
//      T_IRQ        ��          PC10         //�����������ж��ź�
//      T_DO         ��          PC2          //������SPI���߶��ź�
//      T_DIN        ��          PC3          //������SPI����д�ź�
//      T_CS         ��          PC13         //������Ƭѡ�����ź�
//      T_CLK        ��          PC0          //������SPI����ʱ���ź�
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
#ifndef __LCD_H
#define __LCD_H

#include "xil_printf.h"
#include "xparameters.h"
#include "xgpiops.h"
#include "sleep.h"

#define GPIO_DEVICE_ID XPAR_XGPIOPS_0_DEVICE_ID

#define EMIO_LCD_CS 	58
#define EMIO_LCD_RESET 	59
#define EMIO_LCD_DC 	60
#define EMIO_LCD_MOSI 	61
#define EMIO_LCD_SCK 	62
#define EMIO_LCD_LED 	63
#define EMIO_LCD_MISO 	64

extern XGpioPs_Config *ConfigPtr;
extern XGpioPs Gpio;

#define	LCD_RST_CLR		XGpioPs_WritePin(&Gpio, EMIO_LCD_RESET, 0)    //��λ
#define	LCD_RST_SET		XGpioPs_WritePin(&Gpio, EMIO_LCD_RESET, 1)

#define	LCD_CS_CLR		XGpioPs_WritePin(&Gpio, EMIO_LCD_CS, 0)
#define LCD_CS_SET		XGpioPs_WritePin(&Gpio, EMIO_LCD_CS, 1)

#define LCD_RS_CLR		XGpioPs_WritePin(&Gpio, EMIO_LCD_DC, 0)
#define LCD_RS_SET		XGpioPs_WritePin(&Gpio, EMIO_LCD_DC, 1)

//LCD��Ҫ������
typedef struct
{
	u16 width;			//LCD ����
	u16 height;			//LCD �߶�
	u16 id;				  //LCD ID
	u8  dir;			  //���������������ƣ�0��������1��������
	u16	 wramcmd;		//��ʼдgramָ��
	u16  setxcmd;		//����x����ָ��
	u16  setycmd;		//����y����ָ��
}_lcd_dev;

//LCD����
extern _lcd_dev lcddev;	//����LCD��Ҫ����
/////////////////////////////////////�û�������///////////////////////////////////
#define USE_HORIZONTAL  	 0//����Һ����˳ʱ����ת���� 	0-0����ת��1-90����ת��2-180����ת��3-270����ת

//����LCD�ĳߴ�
#define LCD_W 240
#define LCD_H 320

//������ɫ
#define WHITE       0xFFFF
#define BLACK      	0x0000
#define BLUE       	0x001F
#define BRED        0XF81F
#define GRED 			 	0XFFE0
#define GBLUE			 	0X07FF
#define RED         0xF800
#define MAGENTA     0xF81F
#define GREEN       0x07E0
#define CYAN        0x7FFF
#define YELLOW      0xFFE0
#define BROWN 			0XBC40 //��ɫ
#define BRRED 			0XFC07 //�غ�ɫ
#define GRAY  			0X8430 //��ɫ
//GUI��ɫ

void LCD_Init(void);
void LCD_Clear(u16 Color);

#endif



