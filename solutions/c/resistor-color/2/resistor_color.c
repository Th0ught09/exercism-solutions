#include "resistor_color.h"

resistor_band_t resistorBandColors[] = {BLACK, BROWN, RED,    ORANGE, YELLOW,
                                        GREEN, BLUE,  VIOLET, GREY,   WHITE};

int color_code(resistor_band_t color) {
  resistor_band_t myVar = color;
  return myVar;
}

const resistor_band_t *colors() { return resistorBandColors; }
