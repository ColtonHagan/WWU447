#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <math.h>
//binary numbers equal to there index
char binary[16][5] = {"0000", "0001", "0010", "0011", "0100", "0101","0110", "0111", "1000", "1001", "1010", "1011", "1100", "1101", "1110","1111"};

//Converts given hex char to binary equivelent
char* HexToBinary(char hex) {
  char* biStr = malloc(5);
  if (hex >= '0' && hex <= '9') 
    biStr = binary[hex - '0'];
  else if (hex >= 'a' && hex <= 'f') 
    biStr = binary[10 + hex - 'a'];
  else
    return NULL;
  return biStr;
}

//Converts given 4 digit binary string to hex equivelent
char* BinaryToHex(char* biStr) {
    if(strlen(biStr) != 4) {
        return NULL;
    }
    char* hex = malloc(5);
    for(int i = 0; i < 16; i ++) {
        if(strcmp(biStr, binary[i]) == 0) {
            sprintf(hex, "%x", i);
            return hex;
        }
    }
    return NULL;
}

void Simulate(char* traceFileName, int memorySize, int pageSize) {
	printf("Trace File:  %s\n", traceFileName);
	printf("Memory size:  %d KB\n", memorySize);
	printf("Page Size: %d KB\n", pageSize);
	int pageNum = memorySize/pageSize;
	pageSize *= 1024;
	int bitLen = 32 - log2(pageSize);
	int hexLen = bitLen / 4;
	int remander = bitLen%4;
	char line[20], fullAddr[10], addr[10];
	FILE * fp;
    if((fp = fopen(traceFileName, "r")) == NULL) {
        printf("Error: No file by that name\n");
        exit(EXIT_FAILURE);
    }
    while(fgets(line, sizeof(line), fp)) {
        bool secondChance[pageNum];
	    char **pages = malloc((pageNum+1) * sizeof(char*));
	    //fills pages with -1
	    for(int i = 0; i < pageNum; i++) {
            pages[i] = malloc(10);
            strcpy(pages[i], "-1");
        }
        sscanf(line, " %s", fullAddr);
        //If you are not cutting a hex number
        if(remander == 0) {
            memcpy(addr,fullAddr,hexLen);
            addr[hexLen] = '\0';
            printf("%s\n", addr);
        //if you need to split a hex number
        } else {
            //takes first 4 digits
            memcpy(addr,fullAddr,hexLen);
            addr[hexLen] = '\0';
            //convers to binary and take remander
            char* biStr = HexToBinary(fullAddr[4]);
            memcpy(biStr,biStr,remander);
            biStr[remander] = '\0';
            //converts to full binary string
            while(strlen(biStr) < 4) {
                char* tempStr = malloc(5);
                snprintf(tempStr, sizeof(tempStr), "0%s", biStr);
                strcpy(biStr,tempStr);
                free(tempStr);
            }
            //converts back to hex and re-adds
            strcat(addr, BinaryToHex(biStr));
            printf("%s\n", addr);
        }
        //frees pages
        for(int i = 0; i < pageNum; i++) {
            free(pages[i]);
        }
        free(pages);
    }
}

int main(int argc, char *argv[]) {
	char* fileName;
	char* endptr1 = NULL;
	char* endptr2 = NULL;
	int memorySize, pageSize;
	//Check right number of args
	/*if(argc != 4) {
		printf("Error: Pass 3 arguments\n");
		return EXIT_FAILURE;
	}
	fileName = argv[1];
	memorySize = strtol(argv[2],&endptr1,10);
	pageSize = strtol(argv[3],&endptr2,10);
	//checks valid args
	if((endptr1 != NULL && *endptr1 != 0) || (endptr2 != NULL && *endptr2 != 0) || memorySize < 0 || pageSize < 0) {
		printf("Error: Values in passed arguments are not valid\n");
		return EXIT_FAILURE;
	}*/
	fileName = "test.txt";
	memorySize = 64;
	pageSize = 4;
	Simulate(fileName, memorySize, pageSize);
	return 0;
}
