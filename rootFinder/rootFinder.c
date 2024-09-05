#include <stdlib.h>
#include <stdio.h>
#include <float.h>

double fabs (double value) {
    return value<0.0 ? -value : value;
}
double power(double base, size_t exp) {
    double result = 1.0;
    for (size_t i = 0; i < exp; i++) 
    {
        result *= base;
    }
    return result;
}

int main(int argc, char *argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // The problem we are trying to solve is:
    // r^n = x
    // given n and x, find r.
    // n is a positive integer larger than 0.
    // x is a positive floating point value.
    // https://en.wikipedia.org/wiki/Nth_root
    // r needs to be found such that r is within the answer value specified by precision.

    double x;
    fscanf(fp, "%lf", &x);

    size_t n;
    fscanf(fp, "%ld", &n);

    double precision;
    fscanf(fp, "%lf", &precision);

    // The easiest way to solve this in C is to invoke the pow() function as follows.
    // Unfortunately, as part of this assignment we are not allowing importing math.h.
    // Even if you import math.h, that Makefile does not link the math library using the -lm flag.
    // So, you will need to write a separate algorithm to find the n-th root.
    // printf("%f", pow(x, 1.0/n));

    // There are many algorithms that can find the n-th root (Newton-Raphson, etc.).
    // A straightfoward one for our purposes is a binary search along the number line.
    // You should review how the binary search algorithm works.

    double guess_r_max = x<1.0 ? 1.0 : x; // Think: why is this the maximum guess?
    double guess_r_min = 0.0;
    double guess_r = 0;

    // double guess_r_old = guess_r;
    double error = DBL_MAX;

    double guess_r_mid, f_mid;

    while ( precision*0.1 < fabs(error) ) 
    {
        guess_r_mid = (guess_r_max + guess_r_min) / 2; // Midpoint
        f_mid = power(guess_r_mid, n) - x; // f(r) at midpoint using customPow

        if (f_mid > 0)
            guess_r_max = guess_r_mid;
        else
            guess_r_min = guess_r_mid;

        error = guess_r_mid - guess_r;
        guess_r = guess_r_mid;
    }

    printf("%f\n", guess_r); // print with default precision

    return EXIT_SUCCESS;

}
