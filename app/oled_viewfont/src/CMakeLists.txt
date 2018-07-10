#####################################################################
# simple AVR executable
#####################################################################
add_avr_executable(
   oledviewfont
   oled_i2c_viewfont.cpp
   )

#####################################################################
# libraries to link to
#####################################################################
target_link_libraries(
  oledviewfont-${AVR_MCU}.elf
  oled_i2c-${AVR_MCU}
  )
