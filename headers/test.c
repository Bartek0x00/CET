#include <stdio.h>
#include "Pair.h"

int main(void)
{
	Pair(int, double) p1 = Pair_make(34, 3.14);
	printf("%d\n", p1.first);
	printf("%g\n", p1.second);
	return 0;
}
