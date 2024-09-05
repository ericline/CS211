#include "../graphutils.h" // header for functions to load and free adjacencyList

// A program to print the edge list of a graph given the adjacency matrix
int main ( int argc, char* argv[] ) {

    // FIRST, READ THE ADJACENCY MATRIX FILE
    AdjacencyListNode* adjacencyList = NULL;
    size_t totalNodes = 0;

    totalNodes = adjMatrixToList(argv[1], &adjacencyList);
    if (totalNodes == 0)
    {
        printf("adjList failure");
        return EXIT_FAILURE;
    }

    // NEXT, TRAVERSE THE ADJACENCY LIST AND PRINT EACH EDGE, REPRESENTED AS A PAIR OF NODES
    // Example of traversing the adjacency list is in the freeAdjList() function in graphutils.h
    for (size_t source = 0; source < totalNodes; source++) 
    {
        AdjacencyListNode* dest = adjacencyList[source].next;

        while (dest) 
        {
            if (source < dest->graphNode) 
            {
                printf("%zu %zu\n", source, dest->graphNode);
            }
            dest = dest->next;
        }
    }

    // NOW, BE SURE TO FREE THE ADJACENCY LIST
    freeAdjList(totalNodes, adjacencyList);


    return EXIT_SUCCESS;
}
