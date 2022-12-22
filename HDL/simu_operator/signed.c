#include <stdint.h>
#include <stdio.h>

int main() {
	int8_t sval[256];
	for (int16_t i = -128; i < 128; i++) {
		sval[i+128] = i;
	}
	
	uint8_t uval[256];
	for(uint16_t i = 0; i < 256; i++) {
		uval[i] = sval[i]+128;
	}
	
	for(uint16_t i = 0; i < 256; i++) {
		printf("%d | %d\n", sval[i], uval[i]);
	}
}
