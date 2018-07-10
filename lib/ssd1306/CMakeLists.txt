
include_directories(libs/twi_master)
#####################################################################
# simple AVR library
#####################################################################
add_avr_library(
  ssd1306
  ssd1306.cpp
  ssd1306.hpp
  )

