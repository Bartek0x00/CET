#include "test.h"
#include "../headers/Pair.h"

#define PAIR_T1 int
#define PAIR_T2 float

#define PAIR_V1 6
#define PAIR_V2 3.14

Pair_define(PAIR_T1, PAIR_T2);

TEST make(void)
{
	Pair(PAIR_T1, PAIR_T2) pair = Pair_make(PAIR_V1, PAIR_V2);

	PAIR_T1 tmp1 = PAIR_V1;
	PAIR_T2 tmp2 = PAIR_V2;

	ASSERT(((pair.first == tmp1) && (pair.second == tmp2)), 1);
}

int main(void)
{
	return 0;
}
