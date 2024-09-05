#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>

// Struct to hold the open and close braces and the pointer to the next element.
struct element {
    char close;
    struct element* next;
};

// Append the new element to the start of the stack
// This is one potential way to write this function signature
struct element* push (
    struct element* stack,
    char close
) {
    struct element* newElement = (struct element*)malloc(sizeof(struct element));
    
    newElement->close = close;
    newElement->next = stack;

    return newElement;
}

// Remove element from the top of the stack
char pop ( struct element** stack ) {

    char top = '\0';

    if (*stack != NULL) 
    {
        struct element* temp = *stack;
        top = temp->close;
        *stack = (*stack)->next;
        free(temp);
    } 
    else 
    {
        return '\0';
    }

    return top;
}

int main(int argc, char* argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    struct element* root = NULL;
    bool balanced = true;

    char buff;
    while ( fscanf(fp, "%c", &buff)==1 ) {

        switch(buff) {
            case '<' :
                root = push(root, buff);
                break;
            case '(' :
                root = push(root, buff);
                break;
            case '[' :
                root = push(root, buff);
                break;
            case '{' :
                root = push(root, buff);
                break;
            case '>' :
                if (pop(&root) != '<') 
                    balanced = false;
                break;
            case ')' :
                if (pop(&root) != '(') 
                    balanced = false;
                break;
            case ']' :
                if (pop(&root) != '[') 
                    balanced = false;
                break;
            case '}' :
                if (pop(&root) != '{') 
                    balanced = false;
                break;
            default :
                printf("Invalid character\n" );
        }
    }

    if(root != NULL)
    {
        balanced = false;
        while(root != NULL)
        {
            pop(&root);
        }
    }

    printf ( balanced ? "yes" : "no" );
    fclose(fp);
    return 0;
}
