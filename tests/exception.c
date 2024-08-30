#include <string.h>
#include "test.h"
#include "../headers/Exception.h"

#define EXC_CODE 1
#define EXC_WHAT "runtime"

TEST _try(void)
{
	try {};

	const unsigned char tmp[sizeof(jmp_buf)] = {0};
	
	ASSERT(!memcmp(tmp, CET_Exception_buf, sizeof(jmp_buf)), 0);
}

TEST _throw(void)
{
	try {
		throw(EXC_CODE);
	}
	
	ASSERT(exception.code, EXC_CODE);
}

TEST _throw_msg(void)
{
	try {
		throw_msg(EXC_CODE, EXC_WHAT);
	}

	ASSERT(strcmp(exception.what, EXC_WHAT), 0);
}

TEST _catch(void)
{
	int res = 0;

	try {
		throw(EXC_CODE);
	} catch(EXC_CODE) {
		res = 1;
	}

	ASSERT(res, 1);
}

TEST _finally(void)
{
	int res = 0;

	try {
		throw(EXC_CODE);
	} catch (EXC_CODE) {
		
	} finally {
		res = 1;
	}

	ASSERT(res, 1);
}

int main(void)
{
	return 0;
}
