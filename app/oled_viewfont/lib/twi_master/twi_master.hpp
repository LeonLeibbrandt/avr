#ifndef __I2C_HPP
#define __I2C_HPP

#include <inttypes.h>

class twi_master {
private:
  uint8_t _address;
public:
  twi_master(uint8_t address, double freq, double clock);
  uint8_t start();
  void stop();
  uint8_t write(uint8_t data);
  uint8_t read_ack();
  uint8_t read_nack();
};

#endif
