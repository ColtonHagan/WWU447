/* Name: Colton Hagan
   Class: CS447
   Project: hw4
   Description: Reads in addresss from file, simulating page table, and second chance algorthm
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <math.h>

//Pagetable containg pages, ref bit (in form of bool), and number of pages
struct pageTable {
    char ** pages;
    bool * secondChance;
    int pageNum;
};

//binary numbers equal to there index
char binary[16][5] = {
    "0000",
    "0001",
    "0010",
    "0011",
    "0100",
    "0101",
    "0110",
    "0111",
    "1000",
    "1001",
    "1010",
    "1011",
    "1100",
    "1101",
    "1110",
    "1111"
};

//Converts given hex char to binary equivelent
char * HexToBinary(char hex) {
    char * biStr = malloc(5);
    if (hex >= '0' && hex <= '9')
        biStr = binary[hex - '0'];
    else if (hex >= 'a' && hex <= 'f')
        biStr = binary[10 + hex - 'a'];
    else
        return NULL;
    return biStr;
}

//Converts given 4 digit binary string to hex equivelent
char * BinaryToHex(char * biStr) {
    if (strlen(biStr) != 4)
        return NULL;
    char * hex = malloc(5);
    for (int i = 0; i < 16; i++) {
        if (strcmp(biStr, binary[i]) == 0) {
            sprintf(hex, "%x", i);
            return hex;
        }
    }
    return NULL;
}

//Using secondChance algorthm, finds and replaces page
int replacePages(char * addr, struct pageTable * pageTable, int position) {
    while (true) {
        //if hit end of pages, start over 
        if (position >= pageTable -> pageNum)
            position = 0;
        //hit
        if (!pageTable -> secondChance[position]) {
            strcpy(pageTable -> pages[position], addr);
            return position + 1;
        }
        //miss
        pageTable -> secondChance[position] = false;
        position++;
    }
}

//Using checks to see if addr is in pages if it is updates it
bool checkPages(char * addr, struct pageTable * pageTable) {
    //Finds if it is curre
    for (int i = 0; i < pageTable -> pageNum; i++) {
        if (strcmp(pageTable -> pages[i], addr) == 0) {
            pageTable -> secondChance[i] = true;
            return true;
        }
    }
    return false;
}

//Calculates addrs from given value for current page size
char * calculateAddr(char fullAddr[], int bitLen) {
    int hexLen = bitLen / 4;
    int remander = bitLen % 4;
    char * addr = malloc(10);
    //If you are not splitting a hex number
    if (remander == 0) {
        memcpy(addr, fullAddr, hexLen);
        addr[hexLen] = '\0';
        //if you need to split a hex number
    } else {
        //takes first 4 digits
        memcpy(addr, fullAddr, hexLen);
        addr[hexLen] = '\0';
        //convers to binary and take remander
        char * biStr = HexToBinary(fullAddr[4]);
        memcpy(biStr, biStr, remander);
        biStr[remander] = '\0';
        //converts to full binary string
        while (strlen(biStr) < 4) {
            char * tempStr = malloc(5);
            snprintf(tempStr, strlen(tempStr), "0%s", biStr);
            strcpy(biStr, tempStr);
            free(tempStr);
        }
        //converts back to hex and re-adds
        strcat(addr, BinaryToHex(biStr));
    }
    return addr;
}

//Reads in addresss from file, simulating page table, and running second chance algorthm
void Simulate(char * traceFileName, int memorySize, int pageSize) {
    int position = 0, pageFaults = 0;
    char line[20], fullAddr[10];
    FILE * fp;
    //Calculates page information
    int bitLen = 32 - log2(pageSize * 1024);

    struct pageTable * pageTable = malloc(sizeof(struct pageTable));
    pageTable -> pageNum = memorySize / pageSize;
    pageTable -> secondChance = malloc(pageTable -> pageNum);
    pageTable -> pages = malloc((pageTable -> pageNum + 1) * sizeof(char * ));
    //fills pages with -1
    for (int i = 0; i < pageTable -> pageNum; i++) {
        pageTable -> pages[i] = malloc(10);
        strcpy(pageTable -> pages[i], "-1");
    }

    if ((fp = fopen(traceFileName, "r")) == NULL) {
        printf("Error: No file by that name\n");
        exit(EXIT_FAILURE);
    }

    //reads address from file and adds to page  tale
    while (fgets(line, sizeof(line), fp)) {
        //gets first word of line
        sscanf(line, " %s", fullAddr);
        //Get modified address
        char * addr = calculateAddr(fullAddr, bitLen);
        //updates and replaces pages using second chance
        if (!checkPages(addr, pageTable)) {
            //if there is a page fault
            pageFaults++;
            position = replacePages(addr, pageTable, position);
        }
        free(addr);
    }

    //frees pages
    for (int i = 0; i < pageTable -> pageNum; i++)
        free(pageTable -> pages[i]);
    free(pageTable -> pages);
    free(pageTable -> secondChance);
    free(pageTable);

    //Prints info
    printf("Trace File:  %s\n", traceFileName);
    printf("Memory size:  %d KB\n", memorySize);
    printf("Page Size:  %d KB\n", pageSize);
    printf("Page Faults:  %d\n", pageFaults);
}

int main(int argc, char * argv[]) {
    char * fileName;
    char * endptr1 = NULL;
    char * endptr2 = NULL;
    int memorySize, pageSize;
    //Check right number of args
    if (argc != 4) {
        printf("Error: Pass 3 arguments\n");
        return EXIT_FAILURE;
    }
    fileName = argv[1];
    memorySize = strtol(argv[2], & endptr1, 10);
    pageSize = strtol(argv[3], & endptr2, 10);
    //checks valid args
    if ((endptr1 != NULL && * endptr1 != 0) || (endptr2 != NULL && * endptr2 != 0) || memorySize < 0 || pageSize < 0) {
        printf("Error: Values in passed arguments are not valid\n");
        return EXIT_FAILURE;
    }
    //check if they are possible values of page/memory size
    if (memorySize != 64 && memorySize != 128 && memorySize != 256) {
        printf("Error: Memory size must be 64, 128, or 256\n");
        return EXIT_FAILURE;
    }
    if (pageSize != 4 && pageSize != 16 && pageSize != 32 && pageSize != 64) {
        printf("Error: Page size must be 4, 16, 32, or 64\n");
        return EXIT_FAILURE;
    }
    Simulate(fileName, memorySize, pageSize);
    return 0;
}
