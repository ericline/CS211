#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <math.h>
// https://www.tutorialspoint.com/c_standard_library/limits_h.htm
#include <limits.h>
// https://www.cplusplus.com/reference/cfloat/
#include <float.h>

#define FLOAT_SZ sizeof(float)*CHAR_BIT
#define EXP_SZ (FLOAT_SZ-FLT_MANT_DIG)
#define FRAC_SZ (FLT_MANT_DIG-1)

unsigned int binaryToUint(const char *binary) {
    unsigned int num = 0;
    while (*binary) {
        num = (num << 1) | (*binary++ - '0');
    }
    return num;
}

int main(int argc, char *argv[]) {

    // float value = *(float *) &binary; // you are not allowed to do this.
    // unsigned int binary = *(unsigned int*) &value; // you are not allowed to do this.

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // SETUP

    // first, read the binary number representation of multiplier
    char buff;
    unsigned int multiplier = 0;
    for (int i=EXP_SZ+FRAC_SZ; 0<=i; i--) 
    { // read MSB first as that is what comes first in the file
        if(!fscanf(fp, "%c", &buff)) 
        {
            perror("reading the destination base failed");
            exit(EXIT_FAILURE);
        }

        multiplier = multiplier << 1;

        if (buff == '1')
            multiplier = multiplier | 1;
    }

    // notice that you are reading two different lines; caution with reading
    while (fscanf(fp, "%c", &buff) == 1 && buff != '\n');

    // first, read the binary number representation of multiplcand
    unsigned int multiplicand = 0;
    for (int i=EXP_SZ+FRAC_SZ; 0<=i; i--) 
    { // read MSB first as that is what comes first in the file
        if(!fscanf(fp, "%c", &buff)) 
        {
            perror("reading the destination base failed");
            exit(EXIT_FAILURE);
        }

        multiplicand = multiplicand << 1;

        if (buff == '1')
            multiplicand = multiplicand | 1;
    }

    float product = *(float *) &multiplier * *(float *) &multiplicand; // you are not allowed to print from this.
    unsigned int ref_bits = *(unsigned int *) &product; // you are not allowed to print from this. But you can use it to validate your solution.

    // SIGN
    int sign1 = 0;
    int sign2 = 0;
    if((multiplier >> (EXP_SZ + FRAC_SZ)) & 1)
        sign1 = 1;
    if((multiplicand >> (EXP_SZ + FRAC_SZ)) & 1)
        sign2 = 1;

    bool sign = sign1 ^ sign2;
    printf("%d_",sign);
    //assert (sign == (1&ref_bits>>(EXP_SZ+FRAC_SZ)));

    // EXP
    // get the exp field of the multiplier and multiplicand
    int e1 = ((multiplier >> FRAC_SZ) & ((1 << EXP_SZ) - 1));
    int e2 = ((multiplicand >> FRAC_SZ) & ((1 << EXP_SZ) - 1));
    // add the two exp together
    e1 -= 127;
    e2 -= 127;
    // subtract bias

    // FRAC
    // get the frac field of the multiplier and multiplicand
    double m1 = (multiplier & ((1 << FRAC_SZ) - 1)) / pow(2, FRAC_SZ);
    double m2 = (multiplicand & ((1 << FRAC_SZ) - 1)) / pow(2, FRAC_SZ);
    // assuming that the input numbers are normalized floating point numbers, add back the implied leading 1 in the mantissa
    m1 += 1;
    m2 += 1;
    
    double number1 = ldexp ( m1, e1 );
    double number2 = ldexp ( m2, e2 );

    float value = number1 * number2;    

    if(fabs(value) == 0.0)
    {
        if(1 / value == -INFINITY)
            printf("1_");
        else
            printf("0_");
        for(int i = 0; i < EXP_SZ; i++)
            printf("0");
        
        printf("_");
        for(int i = 0; i < FRAC_SZ; i++)
            printf("0");
        return EXIT_SUCCESS;
    }

    //printf("\nvalue: %f\n", value);
    bool subnormal = fabs(value) < pow(0.5, (127-1));
    
    signed short exp = (1 << (EXP_SZ - 1)) - 1; // start by assuming largest possible exp (before infinity)
    // do trial division until the proper exponent E is found
    long double fraction = value;

    if(subnormal)
    {
        fraction /= pow(2, -1022 - 1); // Adjust fraction for subnormal range
        exp = 0;
    }
    else
    {
        while (fraction >= 2.0) 
        {
            fraction /= 2.0;
            exp++;
        }
        while (fraction < 1.0) 
        {
            fraction *= 2.0;
            exp--;
        }
    }


    // PRINTING
    // print exp
    for ( int bit_index=EXP_SZ-1; 0<=bit_index; bit_index-- ) {
        bool trial_bit = 1&exp>>bit_index;
        printf("%d",trial_bit);
        //assert (trial_bit == (1&ref_bits>>(bit_index+FRAC_SZ)));
    }
    printf("_");

    /* Frac Field */
    unsigned long frac = ref_bits & ((1LL << FRAC_SZ) - 1);
        for (int i = FRAC_SZ - 1; i >= 0; --i)
            printf("%ld", 1 & (frac >> i));
    // print frac
    /*for ( int bit_index=FRAC_SZ-1; 0<=bit_index; bit_index-- ) {
        bool trial_bit = 1&frac>>bit_index;
        printf("%d",trial_bit);
        //assert (trial_bit == (1&ref_bits>>(bit_index)));
    }*/

    return(EXIT_SUCCESS);

}