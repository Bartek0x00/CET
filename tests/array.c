#include "test.h"
#include "../headers/Array.h"

#define ARR_TYPE int
#define ARR_SIZE 3
#define ARR_VAL  1, 2, 3
#define ARR_ELEM 1

Array_define(ARR_TYPE, ARR_SIZE);

TEST make(void)
{
	Array(ARR_TYPE, ARR_SIZE) arr1 = Array_make(ARR_TYPE, ARR_VAL);

	ARR_TYPE arr2[ARR_SIZE] = {ARR_VAL};
	
	ASSERT(memcmp(arr1.data, arr2, ARR_SIZE), 0);
}

TEST to_array(void)
{
	ARR_TYPE arr2[ARR_SIZE] = {ARR_VAL};

	Array(ARR_TYPE, ARR_SIZE) arr1 = Array_to_array(ARR_TYPE, ARR_SIZE, arr2);

	ASSERT(memcmp(arr1.data, arr2, ARR_SIZE), 0);
}

TEST at(void)
{
	ARR_TYPE arr2[ARR_SIZE] = {ARR_VAL};

	Array(ARR_TYPE, ARR_SIZE) arr1 = Array_make(ARR_TYPE, ARR_VAL);

	ASSERT(
		Array_at(arr1, (size_t)(ARR_SIZE / 3)), 
		arr2[(size_t)(ARR_SIZE / 3)]
	);
}

TEST front(void)
{
	ARR_TYPE arr2[ARR_SIZE] = {ARR_VAL};

	Array(ARR_TYPE, ARR_SIZE) arr1 = Array_make(ARR_TYPE, ARR_VAL);

	ASSERT(Array_front(arr1), arr2[0]);
}

TEST back(void)
{
	ARR_TYPE arr2[ARR_SIZE] = {ARR_VAL};

	Array(ARR_TYPE, ARR_SIZE) arr1 = Array_make(ARR_TYPE, ARR_VAL);

	ASSERT(Array_back(arr1), arr2[ARR_SIZE - 1]);
}

TEST fill(void)
{
	ARR_TYPE arr2[ARR_SIZE] = {0};
	for (size_t i = 0; i < ARR_SIZE; i++)
		arr2[i] = ARR_ELEM;

	Array(ARR_TYPE, ARR_SIZE) arr1 = Array_init(ARR_SIZE);
	Array_fill(arr1, ARR_ELEM);
			
	ASSERT(memcmp(arr1.data, arr2, ARR_SIZE), 0);
}

int main(void)
{
	return 0;	
}
