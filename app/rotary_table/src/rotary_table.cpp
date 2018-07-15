#include <ssd1306.hpp>
#include <avr/io.h>
#include <util/delay.h>



int main()
{
  ssd1306 ssd1306(0x3C, F_CPU, 4000L);
}
