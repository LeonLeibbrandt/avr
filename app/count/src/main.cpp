#include <cppfix.hpp>
#include <ssd1306.hpp>

int main() {
  ssd1306 *ssd;
  ssd = new ssd1306(0x30, 100000, 10000);
  ssd->write(0xff);
}
