#####################################################################
# simple AVR executable
#####################################################################
add_avr_executable(
   rotary_table
   rotary_table.cpp
   )

#####################################################################
# libraries to link to
#####################################################################
target_link_libraries(
  rotary_table-${AVR_MCU}.elf
  ssd1306-${AVR_MCU}
  twi_master-${AVR_MCU}
  )
