#include <ssd1306.hpp>

ssd1306::ssd1306(uint8_t address, double freq, double clock)
{
  _twi = new twi_master(address, freq, clock);
  const uint8_t init[] = {0x00,0xae,0xa8,0x3f,0xd3,0x00,0x40,0xa0,0xa1,0xc0,0xc8,
			0xda,0x12,0x81,0xff,0xa4,0xa6,0xd5,0x80,0x8d,0x14,
			0xaf,0x20,0x02};
  _twi->start();
  
  for (uint8_t index = 0; index < sizeof(init); index++)
  {
	_twi->write(init[index]);
  }
  
}

void ssd1306::write(uint8_t data)
{
  _twi->start();
  _twi->write(data);
  _twi->stop();
  
}
