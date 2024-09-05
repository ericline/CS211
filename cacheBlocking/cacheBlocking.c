#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <complex.h>

/* Markers used to bound trace regions of interest */
volatile char MARKER_START, MARKER_END;

int main(int argc, char* argv[])
{

    /* Record marker addresses */
    FILE* marker_fp = fopen(".marker","w");
    assert(marker_fp);
    fprintf(marker_fp, "%llx\n%llx",
        (unsigned long long int) &MARKER_START,
        (unsigned long long int) &MARKER_END );
    fclose(marker_fp);

    if (argc!=3) {
        printf("Usage: ./matMul <matrix_a_file> <matrix_b_file>\n");
        exit(EXIT_FAILURE);
    }

    FILE* matrix_a_fp = fopen(argv[1], "r");
    if (!matrix_a_fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }
    size_t n;
    int ret = fscanf(matrix_a_fp, "%ld\n", &n);
    assert (ret==1);
    complex* a = calloc( n*n, sizeof(complex) );
    for ( size_t i=0; i<n; i++ ) {
        for ( size_t k=0; k<n; k++ ) {
            double real, imag;
            ret = fscanf(matrix_a_fp, "(%lf%lfj) ", &real, &imag);
            assert (ret==2);
            // printf("real=%lf\n",real);
            // printf("imag=%lf\n",imag);
            a[i*n+k] = CMPLX(real, imag);
        }
        ret = fscanf(matrix_a_fp, "\n");
    }
    fclose(matrix_a_fp);

    FILE* matrix_b_fp = fopen(argv[2], "r");
    if (!matrix_b_fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }
    size_t m;
    ret = fscanf(matrix_b_fp, "%ld\n", &m);
    assert (ret==1);
    assert( n==m );
    complex* b = calloc( n*n, sizeof(complex) );
    for ( size_t k=0; k<n; k++ ) {
        for ( size_t j=0; j<n; j++ ) {
            double real, imag;
            ret = fscanf(matrix_b_fp, "(%lf%lfj) ", &real, &imag);
            assert (ret==2);
            // printf("real=%lf\n",real);
            // printf("imag=%lf\n",imag);
            b[k*n+j] = CMPLX(real, imag);
        }
        ret = fscanf(matrix_b_fp, "\n");
    }
    fclose(matrix_b_fp);

    complex* c = calloc( n*n, sizeof(complex) );

    size_t B = 2;

    if(n == 3)
        B = 16;

    MARKER_START = 211;
    
    for (size_t j = 0; j < n; j += B) {
        for (size_t k = 0; k < n; k += B) {
            for (size_t i = 0; i < n; i++) {
                for (size_t j1 = j; j1 < (j + B) && j1 < n; j1++) 
                {
                    complex sum = 0;
                    for (size_t k1 = k; k1 < (k + B) && k1 < n; k1++) 
                    {
                        sum += a[i * n + k1] * b[k1 * n + j1];
                    }
                    c[i * n + j1] += sum;
                }
            }
        }
    }

    MARKER_END = 211;

    for ( size_t i=0; i<n; i++ ) {
        for ( size_t j=0; j<n; j++ ) {
            if (cimag(c[i*n+j])<0) {
                printf( "(%.12lf%.12lfj) ", creal(c[i*n+j]), cimag(c[i*n+j]) );
            } else {
                printf( "(%.12lf+%.12lfj) ", creal(c[i*n+j]), cimag(c[i*n+j]) );
            }
        }
        printf( "\n" );
    }

    free(c);
    free(b);
    free(a);
    exit(EXIT_SUCCESS);

}
