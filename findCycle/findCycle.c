#include "../graphutils.h" // header for functions to load and free adjacencyList
#include "stack.h"

bool isCyclicDFS(
    size_t graphNodeCount,
    AdjacencyListNode *adjacencyList,
    graphNode_t *parents,
    graphNode_t root,
    graphNode_t current,
    Stack* stack)
{
    // First see if current node has already been visited, indicating a cycle found
    if (parents[current] != -1 && root == current)
    {
        return true;
    }
    else if (parents[current] != -1 && root != current)
    {
        return false;
    }
    
    parents[current] = current;

    // Now iterate through each of the neighboring graph nodes
    AdjacencyListNode *neighbor = adjacencyList[current].next;
    while (neighbor != NULL)
    {
        // If the neighbor nodes is not the parent node (the node from which we arrived at current), call DFS
        if (isCyclicDFS(graphNodeCount, adjacencyList, parents, root, neighbor->graphNode, stack))
        {
            parents[current] = neighbor->graphNode;
            push(stack, &adjacencyList[current]);
            return true;
        }
        neighbor = neighbor->next;
    }
    
    // No cycle
    return false;
}
int main(int argc, char *argv[])
{

    // READ INPUT FILE TO CREATE GRAPH ADJACENCY LIST
    AdjacencyListNode *adjacencyList;

    size_t graphNodeCount = 0;

    graphNodeCount = adjMatrixToList(argv[1], &adjacencyList);
    if (graphNodeCount == 0)
    {
        printf("adjList failure");
        return EXIT_FAILURE;
    }

    Stack stack;
    initStack(&stack, graphNodeCount);

    bool isCyclic = false;

    for (unsigned source = 0; source < graphNodeCount; source++)
    {
        graphNode_t* parents = calloc( graphNodeCount, sizeof(graphNode_t) );
        for (size_t i=0; i<graphNodeCount; i++) 
        {
            parents[i] = -1; // -1 indicates that a nodes is not yet visited
        }

        isCyclic = isCyclicDFS(graphNodeCount, adjacencyList, parents, source, source, &stack);

        if (isCyclic == true)
        {
            while (!isStackEmpty(&stack)) 
            {
                graphNode_t* val = pop(&stack);
                printf("%ld ", *val);
            }
            free(parents);
            break;
        }
        free(parents); 
    }

    printf("\n");
    if(!isCyclic)
    {
        printf("DAG\n");
    }

    freeAdjList(graphNodeCount, adjacencyList);
    return EXIT_SUCCESS;
}