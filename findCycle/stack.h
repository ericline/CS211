#include <stdlib.h>
#include <stdbool.h>

// Modeled off of queue.h
typedef struct Stack {
    void** items;
    int top;
    int size;
} Stack;

// Initialize the stack
void initStack(Stack* stack, int size) 
{
    stack->items = (void**)malloc(size * sizeof(void*));
    stack->top = -1;
    stack->size = size;
}

bool isStackFull(Stack* stack) 
{
    return stack->top == stack->size - 1;
}

bool isStackEmpty(Stack* stack) 
{
    return stack->top == -1;
}

void push(Stack* stack, void* item)
{ 
    if (isStackFull(stack)) 
    {
        stack->size *= 2;
        stack->items = (void**)realloc(stack->items, stack->size * sizeof(void*));
    }
    stack->items[++stack->top] = item;
}

void* pop(Stack* stack) 
{
    if (!isStackEmpty(stack)) 
        return stack->items[stack->top--];
    return NULL;
}
