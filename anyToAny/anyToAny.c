#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
#include <ctype.h>

// Author: Pedro Torres

size_t anyToInteger(char* source, int base, int digitCount) {
    // Implement logic to convert the source string to integer representation
    // Remember to return the integer value

    size_t repr = 0;

    for(int i = 0; i < digitCount; i++)
    {
        int digit = 0;
        if(isdigit(source[i]))
        {
            digit = source[i] - '0';
        }
        else if(isalpha(source[i]))
        {
            digit = toupper(source[i]) - 'A' + 10;
        }
        else
        {
            printf("Unexpected Character in anyToInteger\n");
            return 0;
        }

        repr = repr * base + digit;
    }

    return repr;
}

void integerToAny(char* result, size_t repr, int base) {
    // Implement the logic to convert the represented value to any base
    // Store this value as a string in the 'result' array

    int i = 0;
    if(repr == 0)
    {
        printf("went here");
        result[i++] = '0';
        result[i] = '\0';
        return;
    }

    while(repr > 0)
    {
        int digit = repr % base;
        if(digit > 9) 
        {
            result[i++] = (digit - 10) + 'A';
        } 
        else 
        {
            result[i++] = digit + '0';
        }
        repr /= base;
    }

    result[i] = '\0';

    return;
}

int main(int argc, char* argv[]) {
    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    int digitCount;
    int sourceBase;
    int destBase;

    if (!fscanf(fp, "%d\n", &digitCount)) {
      perror("reading the input digit count failed");
      exit(EXIT_FAILURE);
    }

    if (!fscanf(fp, "%d\n", &sourceBase)) {
      perror("reading the source base failed");
      exit(EXIT_FAILURE);
    }

    if (!fscanf(fp, "%d\n", &destBase)) {
      perror("reading the destination base failed");
      exit(EXIT_FAILURE);
    }

    char* sourceNum = calloc(sizeof(char), digitCount+1);

    if (!fscanf(fp, "%s\n", sourceNum)) {
      perror("reading the source number");
      exit(EXIT_FAILURE);
    }

    size_t repr;

    repr = anyToInteger(sourceNum, sourceBase, digitCount);

    if(destBase == 10)
    {
        printf("%lu", repr);
        free(sourceNum);
        return EXIT_SUCCESS;
    }

    // Size 65 accounts for the largest digit result (64 bit binary) + 1 null operator
    char* result = (char*)calloc(sizeof(char), 65);

    integerToAny(result, repr, destBase);

    // Print string
    int length = 0;
    while (result[length] != '\0') 
        length++;
    
    for(int i = length - 1; i >= 0; i--)
    {
        printf("%c", result[i]);
    }
    free(sourceNum);
    free(result);

    return EXIT_SUCCESS;
}
