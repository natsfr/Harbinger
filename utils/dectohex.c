#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <stdint.h>

int main() {
	FILE * t;
	t = fopen("ram.data","w");
	
	FILE * f;
	f = fopen("test.data","w");
	
	if(t == NULL) {
		printf("fuck it\n");
		return -1;
	}
	printf("File opened\n");
	
	for(uint32_t i = 0; i < 65536; i++) {
		double s = sin(2.0*M_PI*(double)i/65536.0);
		//printf("%f\n", s);
		//printf("%d\n", (int16_t)(s*32767.0));
		fprintf(t, "%#04x\n", (int16_t)(s*32767.0));
		fprintf(f, "%f\n", s*32767.0);
	}
	
	fclose(f);
	fclose(t);
	return 0;
}
