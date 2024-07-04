#include <stdio.h>
#include "Array.h"

Array_define(int, 3);

int main(void)
{
	Array(int, 3) arr1 = {3, arr};
	
	printf("%d\n", Array_at(arr1, 0));

	return 0;
}
