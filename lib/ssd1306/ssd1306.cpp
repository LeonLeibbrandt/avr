#include <ssd1306.hpp>


const uint8_t SSD1306_COMMAND = 0x00;
const uint8_t SSD1306_DATA = 0xC0;
const uint8_t SSD1306_DATA_CONTINUE = 0x40;

const uint8_t RST_NOT_IN_USE = 255;
// SSD1306 Commandset
// ------------------
// Fundamental Commands
const uint8_t SSD1306_SET_CONTRAST_CONTROL = 0x81;
const uint8_t SSD1306_DISPLAY_ALL_ON_RESUME = 0xA4;
const uint8_t SSD1306_DISPLAY_ALL_ON = 0xA5;
const uint8_t SSD1306_NORMAL_DISPLAY = 0xA6;
const uint8_t SSD1306_INVERT_DISPLAY = 0xA7;
const uint8_t SSD1306_DISPLAY_OFF = 0xAE;
const uint8_t SSD1306_DISPLAY_ON = 0xAF;
const uint8_t SSD1306_NOP = 0xE3;
// Scrolling Commands
const uint8_t SSD1306_HORIZONTAL_SCROLL_RIGHT = 0x26;
const uint8_t SSD1306_HORIZONTAL_SCROLL_LEFT = 0x27;
const uint8_t SSD1306_HORIZONTAL_SCROLL_VERTICAL_AND_RIGHT = 0x29;
const uint8_t SSD1306_HORIZONTAL_SCROLL_VERTICAL_AND_LEFT = 0x2A;
const uint8_t SSD1306_DEACTIVATE_SCROLL = 0x2E;
const uint8_t SSD1306_ACTIVATE_SCROLL = 0x2F;
const uint8_t SSD1306_SET_VERTICAL_SCROLL_AREA = 0xA3;
// Addressing Setting Commands
const uint8_t SSD1306_SET_LOWER_COLUMN = 0x00;
const uint8_t SSD1306_SET_HIGHER_COLUMN = 0x10;
const uint8_t SSD1306_MEMORY_ADDR_MODE = 0x20;
const uint8_t SSD1306_SET_COLUMN_ADDR = 0x21;
const uint8_t SSD1306_SET_PAGE_ADDR = 0x22;
// Hardware Configuration Commands
const uint8_t SSD1306_SET_START_LINE = 0x40;
const uint8_t SSD1306_SET_SEGMENT_REMAP = 0xA0;
const uint8_t SSD1306_SET_MULTIPLEX_RATIO = 0xA8;
const uint8_t SSD1306_COM_SCAN_DIR_INC = 0xC0;
const uint8_t SSD1306_COM_SCAN_DIR_DEC = 0xC8;
const uint8_t SSD1306_SET_DISPLAY_OFFSET = 0xD3;
const uint8_t SSD1306_SET_COM_PINS = 0xDA;
const uint8_t SSD1306_CHARGE_PUMP = 0x8D;
// Timing & Driving Scheme Setting Commands
const uint8_t SSD1306_SET_DISPLAY_CLOCK_DIV_RATIO = 0xD5;
const uint8_t SSD1306_SET_PRECHARGE_PERIOD = 0xD9;
const uint8_t SSD1306_SET_VCOM_DESELECT = 0xDB;

ssd1306::ssd1306(uint8_t address, uint32_t freq, uint32_t clock)
{
  twi_master twim = twi_master(address, freq, clock);
  _twi = &twim;
  const uint8_t init[] = {0x00,0xae,0xa8,0x3f,0xd3,0x00,0x40,0xa0,0xa1,0xc0,0xc8,
			0xda,0x12,0x81,0xff,0xa4,0xa6,0xd5,0x80,0x8d,0x14,
			0xaf,0x20,0x02};
  _twi->start(true);
  
  for (uint8_t index = 0; index < sizeof(init); index++)
  {
	_twi->write(init[index]);
  }
  
}

void ssd1306::write(uint8_t data)
{
  _twi->start(true);
  _twi->write(data);
  _twi->stop();
  
}
