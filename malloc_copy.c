// malloc_copy.c
#include <string.h>
#include <stdlib.h>

char* malloc_copy(char *input)
{
    char *result = malloc(1024);

    strncpy(result, input, strlen(input));

    return result;
}

char* my_malloc(char *input)
{
    char *result = malloc(1024);

    return result;
}