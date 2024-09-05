#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
// https://www.tutorialspoint.com/c_standard_library/limits_h.htm
#include <limits.h>

int main(int argc, char *argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // SETUP

    // first, read the minuend (number to be subtracted from)
    char buff;
    bool minuend[CHAR_BIT]; // suggested that you store bits as array of bools; minuend[0] is the LSB
    for (int i=CHAR_BIT-1; 0<=i; i--) 
    { // read MSB first as that is what comes first in the file
        buff = fgetc(fp);
        if (buff == '1')
            minuend[i] = true;
        else
            minuend[i] = false;
    }

    // notice that you are reading two different lines; caution with reading
    buff = fgetc(fp);
    if(buff != '\n')
    {
        printf("New Line Error");
        fclose(fp);
        return EXIT_FAILURE;
    }

    // second, read the subtrahend (number to subtract)
    bool subtrahend[CHAR_BIT]; // suggested that you store bits as array of bools; subtrahend[0] is the LSB
    for (int i=CHAR_BIT-1; 0<=i; i--) 
    { // read MSB first as that is what comes first in the file
        buff = fgetc(fp);
        if (buff == '1')
            subtrahend[i] = true;
        else
            subtrahend[i] = false;
    }
    fclose(fp);

    // WE WILL DO SUBTRACTION BY NEGATING THE SUBTRAHEND AND ADD THAT TO THE MINUEND

    // Negate the subtrahend
    // flip all bits
    for (int i=CHAR_BIT-1; 0<=i; i--)
    {
        subtrahend[i] = !subtrahend[i];
    }

    // add one
    bool carry = true; // to implement the 'add one' logic, we do binary addition logic with carry set to true at the beginning
    for (int i=0; i<CHAR_BIT; i++) 
    { // iterate from LSB to MSB
        bool curr = subtrahend[i];
        subtrahend[i] = curr ^ carry;
        carry = curr && carry;
    }

    // Add the minuend and the negated subtrahend
    bool difference[CHAR_BIT];
    carry = false;

    // Add the minuend and the negated subtrahend
    for (int i = 0; i < CHAR_BIT; i++) {
        // Calculate sum of current bits and carry
        bool sum = minuend[i] ^ subtrahend[i] ^ carry;
        // Calculate carry for the next bit
        carry = (minuend[i] && subtrahend[i]) || (carry && (minuend[i] ^ subtrahend[i]));

        // Store the result
        difference[i] = sum;
    }

    // print the difference bit string
    for (int i=CHAR_BIT-1; 0<=i; i--)
        printf("%d",difference[i]);

    return EXIT_SUCCESS;

}
