#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>

extern uint32_t
addition(uint32_t, uint32_t);

int main(void) {
  uint32_t sum = addition(1, 2);
  printf("%" PRIu32 "\n", sum);
}
