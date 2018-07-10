#include <avr/io.h>
#include <compat/twi.h>

/*
void OLED::_convert_float(char *buf, double num, int width, uint8_t prec)
{
	dtostrf(num, width, prec, buf);
}
*/
void OLED::_initTWI()
{
  DDRC &= ~(1<<PINC4);
  PORTC |= (1<<PINC4);
  DDRC &= ~(1<<PINC5);
  PORTC |= (1<<PINC5);
  TWSR = 0;
  TWBR = ((F_CPU/TWI_FREQ)-16)/2;
  TWCR = (1 << TWEN) | (1 << TWEA);
}

void OLED::update()
{
  // Send start address
  TWCR = _BV(TWEN) | _BV(TWEA) | _BV(TWINT) | _BV(TWSTA);
  while ((TWCR & _BV(TWINT)) == 0) {};
  TWDR = SSD1306_ADDR<<1;
  TWCR = _BV(TWEN) | _BV(TWINT) | _BV(TWEA);
  while ((TWCR & _BV(TWINT)) == 0) {};
  TWDR = SSD1306_DATA_CONTINUE;
  TWCR = _BV(TWEN) | _BV(TWINT) | _BV(TWEA);
  while ((TWCR & _BV(TWINT)) == 0) {};

  for (int b=0; b<1024; b++)		// Send data
  {
	TWDR = scrbuf[b];
	TWCR = _BV(TWEN) | _BV(TWINT) | _BV(TWEA);									// Clear TWINT to proceed
	while ((TWCR & _BV(TWINT)) == 0) {};										// Wait for TWI to be ready
  }
  TWCR = _BV(TWEN)| _BV(TWINT) | _BV(TWSTO);									// Send STOP
  // interrupts();
}

void OLED::_sendTWIcommand(uint8_t value)
{
  // Send start address
  TWCR = _BV(TWEN) | _BV(TWEA) | _BV(TWINT) | _BV(TWSTA);						// Send START
  while ((TWCR & _BV(TWINT)) == 0) {};										// Wait for TWI to be ready
  TWDR = SSD1306_ADDR<<1;
  TWCR = _BV(TWEN) | _BV(TWINT) | _BV(TWEA);									// Clear TWINT to proceed
  while ((TWCR & _BV(TWINT)) == 0) {};										// Wait for TWI to be ready
  
  TWDR = SSD1306_COMMAND;
  TWCR = _BV(TWEN) | _BV(TWINT) | _BV(TWEA);									// Clear TWINT to proceed
  while ((TWCR & _BV(TWINT)) == 0) {};										// Wait for TWI to be ready
  TWDR = value;
  TWCR = _BV(TWEN) | _BV(TWINT) | _BV(TWEA);									// Clear TWINT to proceed
  while ((TWCR & _BV(TWINT)) == 0) {};										// Wait for TWI to be ready
  
  TWCR = _BV(TWEN)| _BV(TWINT) | _BV(TWSTO);									// Send STOP
}
