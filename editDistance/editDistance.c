#include <stdlib.h>
#include <stdio.h>
#include <string.h>

size_t min ( size_t x, size_t y ) {
    return x<y ? x : y;
}

size_t levenshtein_dynamic ( char* source, char* target ) {

    // printf( "source=%s\n", source );
    // printf( "target=%s\n", target );

    /*if (strlen(source)==0) return strlen(target);
    else if (strlen(target)==0) return strlen(source);
    else if (source[0]==target[0]) return levenshtein_recursive (source+1, target+1);
    else {
        size_t ins = levenshtein_recursive (source+1, target  );
        size_t del = levenshtein_recursive (source,   target+1);
        size_t sub = levenshtein_recursive (source+1, target+1);
        return 1 + min( min(ins,del), sub );
    }*/

    size_t len_source = strlen(source);
    size_t len_target = strlen(target);
    size_t matrix[len_source + 1][len_target + 1];
    size_t i, j, sub_cost;

    for (i = 0; i <= len_source; i++) 
        matrix[i][0] = i;
    for (j = 0; j <= len_target; j++) 
        matrix[0][j] = j;

    for (i = 1; i <= len_source; i++) 
    {
        for (j = 1; j <= len_target; j++) 
        {
            if (source[i - 1] == target[j - 1])
                sub_cost = 0;
            else
                sub_cost = 1;
            size_t ins = matrix[i][j - 1] + 1;
            size_t del = matrix[i - 1][j] + 1;
            size_t sub = matrix[i - 1][j - 1] + sub_cost;
            matrix[i][j] = min(min(ins, del), sub);
        }
    }
    
    return matrix[len_source][len_target];
}

int main(int argc, char* argv[])
{

    FILE* inputFile = fopen(argv[1], "r");
    if (!inputFile) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    char source[32];
    char target[32];

    fscanf (inputFile, "%s\n%s", source, target);

    printf("%ld\n", levenshtein_dynamic ( source, target ));

    return EXIT_SUCCESS;

}
