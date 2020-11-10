#include <stdio.h>
#include <unistd.h>

int main(int argc, char** argv)
{
	while(1) {
		printf("hello Elisa\n");
		fflush(NULL);
		sleep(10);
	}
}
