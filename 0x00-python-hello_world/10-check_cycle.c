#include "lists.h"

/**
 * check_cycle - checks if a singly linked list has a cycle
 * @list: pointer to the head of the list
 * Return: 0 if there is no cycle, 1 if there is a cycle
 */
int check_cycle(listint_t *list)
{
    listint_t *tortoise = list;
    listint_t *hare = list;

    while (tortoise != NULL && hare != NULL && hare->next != NULL)
    {
        tortoise = tortoise->next;       /* Move one step at a time */
        hare = hare->next->next;        /* Move two steps at a time */

        if (tortoise == hare)
            return (1); /* Cycle detected */
    }

    return (0); /* No cycle found */
}
