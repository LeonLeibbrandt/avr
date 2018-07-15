#include <twi_master.hpp>

#include <avr/io.h>
#include <compat/twi.h>

const uint8_t TWI_WRITE_MASK = 0xFE;
const uint8_t TWI_READ_MASK = 0xFF;



twi_master::twi_master(uint8_t address, uint32_t freq, uint32_t clock)
{
  _address = address<<1;
  DDRC &= ~(1<<PINC4);
  PORTC |= (1<<PINC4);
  DDRC &= ~(1<<PINC5);
  PORTC |= (1<<PINC5);
  TWSR = 0;
  TWBR = ((freq/clock)-16)/2;
  TWCR = (1 << TWEN) | (1 << TWEA);
}

uint8_t twi_master::start(bool write)
{
  uint8_t twst;
  
  // send start
  TWCR = (1<<TWINT) | (1<<TWSTA) | (1<<TWEN);
  
  // wait for transmission to complete
  while (!(TWCR & (1<<TWINT)));
  
  // Check value of TWI Status Register. Mask prescaler bits.
  twst = TW_STATUS & 0xF8;
  if ((twst != TW_START) & (twst != TW_REP_START))
	return 1;
  
  // Send device address
  if (write)
	TWDR = _address & TWI_WRITE_MASK;
  else
	TWDR = _address & TWI_READ_MASK;
  TWCR = (1<<TWINT) | (1<<TWEN);
  
  // Wait until transmission done and ACK/NACK received
  while(!(TWCR & (1<<TWINT)));
  
  // Check value of TWI Status registers. Mask Prescaler.
  twst = TW_STATUS & 0xF8;
  if ((twst != TW_MT_SLA_ACK) && (twst != TW_MR_SLA_ACK))
	return 1;
  return 0;
}

void twi_master::stop()
{
  /* send stop condition */
  TWCR = (1<<TWINT) | (1<<TWEN) | (1<<TWSTO);
  
  // wait until stop condition is executed and bus released
  while(TWCR & (1<<TWSTO));
}

uint8_t twi_master::write(uint8_t data)
{
  // send data to the previously addressed device
  TWDR = data;
  TWCR = (1<<TWINT) | (1<<TWEN);
  
  // wait until transmission completed
  while(!(TWCR & (1<<TWINT)));
  
  // check value of TWI Status Register. Mask prescaler bits
  if( (TW_STATUS & 0xF8) != TW_MT_DATA_ACK)
	return 1;
  return 0;
}

uint8_t twi_master::write(uint8_t *data,uint8_t length)
{
  for (uint8_t i=0; i<length; i++)
	write(data[i]);
  return 0;
}

uint8_t twi_master::read_ack()
{
	TWCR = (1<<TWINT) | (1<<TWEN) | (1<<TWEA);
	while(!(TWCR & (1<<TWINT)));    

    return TWDR;
}

uint8_t twi_master::read_nack()
{
	TWCR = (1<<TWINT) | (1<<TWEN);
	while(!(TWCR & (1<<TWINT)));
	
    return TWDR;

}

