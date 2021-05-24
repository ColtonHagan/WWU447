/* Name: Colton Hagan
   Class: CS447
   Project: lab4
   Description: Parses and checks command line args, prints info
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
//Just prints info for given args
void Simulate(char* traceFileName, int memorySize, int pageSize) {
	printf("Trace File:  %s\n", traceFileName);
	printf("Memory size :  %d KB\n",memorySize);
	printf("Page Size: %d KB\n", pageSize);
}

int main(int argc, char * argv[]) {
	char* fileName;
	char* endptr1 = NULL;
	char* endptr2 = NULL;
	int memorySize, pageSize;
	//Check right number of args
	if(argc != 4) {
		printf("Error: Pass 3 arguments\n");
		return 1;
	}
	fileName = argv[1];
	memorySize = strtol(argv[2],&endptr1,10);
	pageSize = strtol(argv[3],&endptr2,10);
	//checks valid args
	if((endptr1 != NULL && *endptr1 != 0) || (endptr2 != NULL && *endptr2 != 0) || memorySize < 0 || pageSize < 0) {
		printf("Error: Values in passed arguments are not valid\n");
		return 1;
	}
	Simulate(fileName, memorySize, pageSize);
	return 0;
}
