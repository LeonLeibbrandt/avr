#ifndef __SSD1306_HPP
#define __SSD1306_HPP

#include <inttypes.h>
#include <twi_master.hpp>

class ssd1306 {
private:
  twi_master *_twi;
public:
  ssd1306(uint8_t address, double freq, double clock);
  void write(uint8_t data);
};

#endif
