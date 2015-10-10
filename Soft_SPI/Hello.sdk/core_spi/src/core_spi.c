/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xspips.h"
#include "xgpio.h"

#define SPI_ID XPAR_XSPIPS_0_DEVICE_ID
#define GPIO_ID XPAR_AXI_GPIO_0_DEVICE_ID
#define LED_CHANNEL 1
#define BTN_CHANNEL 2

static XSpiPs Spi;
static XGpio Gpio;

void print_term(char *str);
int init_peripheral(void);
void spi_write(u8, u8 );
u8 spi_read(u8);


int main()
{
    init_platform();
    init_peripheral();

    print_term("Running SPI Example code\n\r");
    while(!XGpio_DiscreteRead(&Gpio, BTN_CHANNEL)){
    	//Block until any button activated.
    }
    XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, 0xF); //Turn on all the LEDS.
    XSpiPs_SetSlaveSelect(&Spi, 0x1); //CS for slave 1.
    //Start tester code here.


    //End Tester code.

    cleanup_platform();
    return 0;
}

void spi_write(u8 addr, u8 value){
	u8 addr_byte = 0x1 | (addr<<1); // b/c 7 bytes of addr, 1 byte of R/W
	u8 SendBuf[2] = {addr_byte, value};
	XSpiPs_Transfer(&Spi, SendBuf, NULL, 2);
}

u8 spi_read(u8 addr){
	u8 addr_byte = (addr<<1);
	u8 SendBuf[2] = {addr_byte, 0x0};
	u8 RcvBuf[2] = {0x0, 0x0};
	XSpiPs_Transfer(&Spi, SendBuf, RcvBuf, 2);
	return RcvBuf[1];
}

int init_peripheral(void){
	int SPI_Status;
	int GPIO_Status;
	XSpiPs_Config *SpiConfig;

	SpiConfig = XSpiPs_LookupConfig(SPI_ID);
	SPI_Status = XSpiPs_CfgInitialize(&Spi, SpiConfig, SpiConfig->BaseAddress);
	XSpiPs_SetClkPrescaler(&Spi, XSPIPS_CLK_PRESCALE_256);

	GPIO_Status = XGpio_Initialize(&Gpio, GPIO_ID);
	XGpio_SetDataDirection(&Gpio, LED_CHANNEL, 0xF);
	XGpio_SetDataDirection(&Gpio, BTN_CHANNEL, 0x0);
	return SPI_Status & GPIO_Status;

}
