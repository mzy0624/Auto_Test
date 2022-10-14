#include <stdio.h>
#include <stdlib.h>
#define INT_MIN 0x80000000
#define INT_MAX 0x7fffffff
int rand_int(int l, int r)
{
    return rand() % (r - l + 1) + l;
}
int main(void)
{
	int N = rand_int(2, 10);
	printf("%d\n", N);
	return 0;
}
