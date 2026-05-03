#include "resistor_color.h"

int color_code(resistor_band_t color) {
  resistor_band_t myVar = color;
  return myVar;
}

const resistor_band_t *colors() {
  const resistor_band_t *myvar = {BLACK, BROWN, RED,    ORANGE, YELLOW,
                                  GREEN, BLUE,  VIOLET, GREY,   WHITE};
  return myvar;
}
