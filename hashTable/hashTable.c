#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

#define RESTOCK "RESTOCK"
#define SHOW_STOCK "SHOW_STOCK"
#define SALE "SALE"

// Author: @nate-blum

typedef struct HashNode {
    int count;
    char* album_name;
    struct HashNode* next;
} HashNode;

static HashNode** table = NULL;
static int table_fullness = 0, table_size = 4;

int hash(char* str) {
    unsigned long long hash = 0;
	int len = (int) strlen(str);
    for (int i = 0; i < len; i++)
        hash += str[i] * pow(31, len - (i + 1));
    return hash % table_size;
}

void pretty_print_table() {
	// Implement pretty printing of the hash tabled
	// based on the format of the answers
    printf("-------- FINAL COUNTS --------\n");
    for (int i = 0; i < table_size; i++) 
    {
        HashNode* node = table[i];
        while(node != NULL)
        {
            printf("%s: %d\n", node->album_name, node->count);
            node = node->next;
        }
    }
    printf("------------------------------\n");

}

void resize() {
	// printf("Resizing the table from %d to %d\n", <first size>, <second size>);
	// Implement resize logic here
    int old_size = table_size;
    table_size *= 2;
    printf("Resizing the table from %d to %d\n", old_size, table_size);

    // Intialize resized table
    HashNode** resized = (HashNode**)malloc(table_size*sizeof(HashNode*));
    for (int i = 0; i < table_size; i++) 
    {
        resized[i] = NULL;
    }

    // Traverse old table 
    for (int i = 0; i < old_size; i++)
    {
        HashNode* node = table[i];
        while(node != NULL)
        {
            // Calculate new index
            int n_index = hash(node->album_name);
            HashNode* next = node->next;

            // Move node to new table
            node->next = resized[n_index];
            resized[n_index] = node;

            node = next;
        }
    }

    free(table);
    table = resized;
}

void update(char* album, int k) {
	// Implement update logic here
	// Remember to resize if necessary

    if (table == NULL) 
    {
        // Initialize the hash table
        table = (HashNode**)malloc(table_size*sizeof(HashNode*));
        for (int i = 0; i < table_size; i++) 
        {
            table[i] = NULL;
        }
    }

    int index = hash(album);
    HashNode* node = table[index];

    // Search for album node
    while (node != NULL)
    {
        // Album found
        if (strcmp(node->album_name, album) == 0) 
        {
            if(node->count + k < 0) // If removing more than stock
            {
                printf("Not enough stock of %s\n", album);
                return;
            }
            // Update count
            node->count += k;
            return;
        }
        node = node->next;
    }

    // Not in table, then check count first before intializing new album.
    if(k < 0)
    {
        printf("No stock of %s\n", album);
        return;
    }

    // If not in table, create new album with k counts.
    HashNode* newNode = (HashNode*)malloc(sizeof(HashNode));
    newNode->album_name = strdup(album);
    newNode->next = table[index]; // Insert at beginning
    table[index] = newNode;
    table_fullness++;
    newNode->count = k;

    if(table_fullness == table_size / 2)
    {
        //printf("RESIZING BC OF: %s %d\n", album, k);
        //printf("BEFORE RESIZE: %d/%d\n", table_fullness, table_size);
        resize();
        //printf("AFTER RESIZE: %d/%d\n", table_fullness, table_size);
    }
}

int retrieve(char* album_name) {
	// Implement retrieve logic here
	// Remember to account for non-existent searches (must return -1)
    if (table == NULL)
        return -1;

    int index = hash(album_name);
    HashNode* node = table[index];

    while (node != NULL) 
    {
        if (strcmp(node->album_name, album_name) == 0) 
        {
            return node->count;
        }
        node = node->next;
    }
    // Album was not found
    return -1;
}

void free_table() {
	// Make sure to properly free your hash table
    for (int i = 0; i < table_size; i++) 
    {
        HashNode* node = table[i];
        while (node != NULL) 
        {
            // Store next node
            HashNode* nextNode = node->next;

            // Free the current node
            free(node->album_name);
            free(node);
            

            // Move to the next node in the list
            node = nextNode;
        }
    }
    free(table);
}

int main(int argc, char* argv[]) {
	FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

	if (!fscanf(fp, "%d\n", &table_size)) {
        perror("Reading the initial size of the table failed.\n");
        exit(EXIT_FAILURE);
    }

    char command[20], album[150];
	int count;
    while (fscanf(fp, "%s %d %[^\n]s", command, &count, album) == 3) {
		if (strcmp(command, SALE) == 0) {
			update(album, -count);
		} else if (strcmp(command, RESTOCK) == 0) {
            update(album, count);
		} else if (strcmp(command, SHOW_STOCK) == 0) {
			int stock = retrieve(album);
            if(stock < 0)
            {
                printf("No stock of %s\n", album);
            }
            else
            {
                printf("Current stock of %s: %d\n", album, stock);
            }
		}
    }

	pretty_print_table();
	free_table();
    return 0;
}