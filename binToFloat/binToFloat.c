#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define EXP_SZ 8
#define FRAC_SZ 23

int main(int argc, char *argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // SETUP

    // first, read the binary number representation of float point number
    char buff;
    unsigned int binary = 0;
    for (int i=EXP_SZ+FRAC_SZ; 0<=i; i--) 
    { // read MSB first as that is what comes first in the file
        if(!fscanf(fp, "%c", &buff)) 
        {
            perror("reading the destination base failed");
            exit(EXIT_FAILURE);
        }

        binary = binary << 1;

        if (buff == '1')
            binary = binary | 1;
    }

    fclose(fp);

    // float number = *(float *)&binary; // you are not allowed to do this.

    int sign = 0;
    if((binary >> (EXP_SZ + FRAC_SZ)) & 1)
        sign = 1;

    // E
    int e = ((binary >> FRAC_SZ) & ((1 << EXP_SZ) - 1));
    e -= 127;

    // M
    double m = (binary & ((1 << FRAC_SZ) - 1)) / pow(2, FRAC_SZ);
    m += 1;

    // https://www.tutorialspoint.com/c_standard_library/c_function_ldexp.htm
    double number = ldexp ( m, e );
    number = sign ? -number : number;
    printf("%e\n", number);

    return EXIT_SUCCESS;

}
