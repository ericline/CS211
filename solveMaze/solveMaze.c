#include "../graphutils.h" // header for functions to load and free adjacencyList
#include "../queue/queue.h" // header for queue

// A program to solve a maze that may contain cycles using BFS

int main ( int argc, char* argv[] ) {

    // First, read the query file to get the source and target nodes in the maze
    FILE *fp = fopen(argv[2], "r");
    if (!fp) 
    {
        perror("fopen failed");
        exit(EXIT_FAILURE);
    }
    graphNode_t* source = malloc(sizeof(graphNode_t));
    graphNode_t* target = malloc(sizeof(graphNode_t));
    if (!fscanf(fp, "%zu\n", source)) 
    {
        perror("Error reading source\n");
        fclose(fp);
        return EXIT_FAILURE;
    }
    if (!fscanf(fp, "%zu\n", target)) 
    {
        perror("Error reading target\n");
        fclose(fp);
        return EXIT_FAILURE;
    }

    // READ INPUT FILE TO CREATE GRAPH ADJACENCY LIST
    AdjacencyListNode* adjacencyList = NULL;
    size_t graphNodeCount = 0;

    graphNodeCount = adjMatrixToList(argv[1], &adjacencyList);
    if (graphNodeCount == 0)
    {
        printf("adjList failure");
        return EXIT_FAILURE;
    }

    // USE A QUEUE TO PERFORM BFS
    Queue queue = { .front=NULL, .back=NULL };

    // An array that keeps track of who is the parent node of each graph node we visit
    graphNode_t* parents = calloc( graphNodeCount, sizeof(graphNode_t) );
    for (size_t i=0; i<graphNodeCount; i++) {
        parents[i] = -1; // -1 indicates that a nodes is not yet visited
    }

    graphNode_t* current = source;
    parents[*current] = *current;
    //enqueue(&queue, current);

    while (*current != *target) 
    {
        // so long as we haven't found the target node yet, iterate through the adjacency list
        // add each neighbor that has not been visited yet (has no parents) to the queue of nodes to visit
            AdjacencyListNode* dest = adjacencyList[*current].next;

            while (dest)
            {
                if (parents[dest->graphNode] == -1)
                {
                    enqueue(&queue, dest); // Add to the queue for visiting
                    parents[dest->graphNode] = *current; // Mark current as its parent
                }
                dest = dest->next;
            }
        // Visit the next node at the front of the queue of nodes to visit
        current = dequeue(&queue);
    }

    // Now that we've found the target graph node, use the parent array to print maze solution
    // Print the sequence of edges that takes us from the source to the target node
    graphNode_t node = *target;
    while (node != parents[node]) 
    { // Stop when the node is its own parent (the source node)
        graphNode_t parent = parents[node];
        printf("%lu %lu\n", parent, node);
        node = parent;
    }

    // free any queued graph nodes that we never visited because we already solved the maze
    while ( queue.front ) 
    {
        dequeue(&queue);
    }
    
    free (parents);
    free (source);
    free (target);
    freeAdjList ( graphNodeCount, adjacencyList );

    return EXIT_SUCCESS;
}
