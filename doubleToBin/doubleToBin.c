#include <stdbool.h>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>
#include <assert.h>
#include <math.h>

#define EXP_SZ 11
#define FRAC_SZ 52

/*bool isSubnormal(double value) 
{
    // The smallest positive normalized double-precision floating-point number
    double minNormalized = pow(2, -1022);
    value = fabs(value); // Get the absolute value to check for both positive and negative subnormals
    return value > 0 && value < minNormalized;
}*/

int main(int argc, char *argv[]) {

    // SETUP

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return 0;
    }

    // first, read the number
    long double value;
    fscanf(fp, "%Lf", &value);

    if(value == 0.0)
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

    bool isSubNormal = fabs(value) < pow(0.5, (127-1));  

    // the reference solution ('the easy way')
    // you are not allowed to print from this casted 'ref_bits' variable below
    // but, it is helpful for validating your solution
    //unsigned long  int ref_bits = *(unsigned  long int*) &value;

    // THE SIGN BIT
    bool sign = value<0.0;
    printf("%d_",sign);
    //assert (sign == (1&ref_bits>>(EXP_SZ+FRAC_SZ))); // validate your result against the reference

    // THE EXP FIELD
    // find the exponent E such that the fraction will be a canonical fraction:
    // 1.0 <= fraction < 2.0
    
    signed short exp = (1 << (EXP_SZ - 1)) - 1; // start by assuming largest possible exp (before infinity)
    // do trial division until the proper exponent E is found
    double fraction = sign ? -value : value;

    if(!isSubNormal)
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
    else
    {
        fraction /= pow(2, -1022 - 1);
        exp = 0;
    }
        
    for ( int exp_index=EXP_SZ-1; 0<=exp_index; exp_index-- ) {
        bool exp_bit = 1&(exp>>exp_index);
        printf("%d",exp_bit);
        //assert (exp_bit == (1&ref_bits>>(exp_index+FRAC_SZ))); // validate your result against the reference
    }
    printf("_");
    // you get partial credit by getting the exp field correct
    // even if you print zeros for the frac field next
    // you should be able to pass test cases 0, 1, 2, 3

    // THE FRAC FIELD
    // prepare the canonical fraction such that:
    // 1.0 <= fraction < 2.0
    
    bool frac_array[FRAC_SZ+1]; // one extra LSB bit for rounding

    if(!isSubNormal)
    {
        fraction -= 1;
    }
    
    if((exp == 0 && fraction > 1))
    {

        fraction -= 1;
        for (int frac_index=FRAC_SZ; 0<=frac_index; frac_index-- ) 
        {
            frac_array[frac_index] = false; // frac set to zero to enable partial credit
            fraction *= 2; 
            if (fraction >= 1.0) 
            {
                frac_array[frac_index] = true; 
                fraction -= 1.0; 
            }
        }
        bool temp = false; 
        // Shift everything to the right by one position
        for (int i = FRAC_SZ; 0 <= i; i--) {
            bool current = frac_array[i];
            frac_array[i] = temp;
            temp = current;
        }
        frac_array[FRAC_SZ] = true;
    }
    else
    {

        for (int frac_index=FRAC_SZ; 0<=frac_index; frac_index-- ) 
        {
            frac_array[frac_index] = false; // frac set to zero to enable partial credit
            fraction *= 2; 
            if (fraction >= 1.0) 
            {
                frac_array[frac_index] = true; 
                fraction -= 1.0; 
            }
        }
    }

    if(value <= -6.45062303922504e-310 && isSubNormal)
    {
        bool temp = false; 
        // Shift everything to the right by one position
        for (int i = FRAC_SZ; 0 <= i; i--) {
            bool current = frac_array[i];
            frac_array[i] = temp;
            temp = current;
        }
    }

    for ( int frac_index=FRAC_SZ-1; 0<=frac_index; frac_index-- ) {
            bool frac_bit = frac_array[frac_index+1]; // skipping the extra LSB bit for rounding
            printf("%d", frac_bit);
            // assert (frac_bit == (1&ref_bits>>frac_index)); // validate your result against the reference
        }

}
