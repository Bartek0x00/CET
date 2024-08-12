#ifndef _CET_TEST_H
#define _CET_TEST_H

#include <stdio.h>

#define TEST __attribute__((constructor)) static void

#define ASSERT(result, expected) do { \
	if ((result) == (expected)) \
		printf("\033[32mPASS\033[0m: %s: %s\n", __FILE__, __func__); \
	else \
		printf("\033[31mFAIL\033[0m: %s: %s: expected %d but got %d\n", \
			__FILE__, __func__, expected, result); \
} while (0)

#endif //_CET_TEST_H
