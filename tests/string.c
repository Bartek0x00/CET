#include "test.h"
#include "../headers/String.h"

#define STR_TYPE char
#define STR_SIZE 6

static const STR_TYPE TABLE[] = {
	'S', 'T', 'R', 'I', 'N', 'G', '\0'
};

BasicString_define(STR_TYPE);

TEST destroy(void)
{
	BasicString(STR_TYPE) str = BasicString_init(STR_TYPE);

	BasicString_destroy(str);

	ASSERT(str.data, 0);
}

TEST resize(void)
{
	BasicString(STR_TYPE) str = BasicString_init(STR_TYPE);
	
	BasicString_resize(str, 32);

	ASSERT(str.capacity, 32);

	BasicString_destroy(str);
}

TEST assign(void)
{
	BasicString(STR_TYPE) str = BasicString_init(STR_TYPE);

	BasicString_assign(str, TABLE);

	ASSERT(!memcmp(str.data, TABLE, STR_SIZE), 1);

	BasicString_destroy(str);
}

TEST append(void)
{
	BasicString(STR_TYPE) str = BasicString_init(STR_TYPE);

	BasicString_append(str, TABLE);
	BasicString_append(str, TABLE);

	ASSERT(
		!memcmp(str.data, TABLE, STR_SIZE) && \
		!memcmp(str.data + STR_SIZE, TABLE, STR_SIZE),
		1
	);

	BasicString_destroy(str);
}

TEST push_back(void)
{
	BasicString(STR_TYPE) str = BasicString_init(STR_TYPE);

	for (size_t i = 0; i < STR_SIZE; i++)
		BasicString_push_back(str, TABLE[i]);
	
	ASSERT(!memcmp(str.data, TABLE, STR_SIZE), 1);

	BasicString_destroy(str);
}

TEST pop_back(void)
{
	BasicString(STR_TYPE) str = BasicString_init(STR_TYPE);

	BasicString_assign(str, TABLE);

	for (size_t i = 0; i < STR_SIZE; i++)
		BasicString_pop_back(str);

	ASSERT(str.length, 0);

	BasicString_destroy(str);
}

TEST clear(void)
{
	BasicString(STR_TYPE) str = BasicString_init(STR_TYPE);

	BasicString_assign(str, TABLE);

	BasicString_clear(str);

	ASSERT(str.length, 0);

	BasicString_destroy(str);
}

TEST at(void)
{
	BasicString(STR_TYPE) str = BasicString_init(STR_TYPE);

	BasicString_assign(str, TABLE);

	ASSERT(
		BasicString_at(str, (size_t)(STR_SIZE / 2)), 
		TABLE[(size_t)(STR_SIZE / 2)]
	);

	BasicString_destroy(str);
}

TEST front(void)
{
	BasicString(STR_TYPE) str = BasicString_init(STR_TYPE);

	BasicString_assign(str, TABLE);

	ASSERT(BasicString_front(str), TABLE[0]);

	BasicString_destroy(str);
}

TEST back(void)
{
	BasicString(STR_TYPE) str = BasicString_init(STR_TYPE);

	BasicString_assign(str, TABLE);

	ASSERT(BasicString_back(str), TABLE[STR_SIZE - 1]);

	BasicString_destroy(str);
}

TEST erase(void)
{
	BasicString(STR_TYPE) str = BasicString_init(STR_TYPE);

	BasicString_append(str, TABLE);
	BasicString_append(str, TABLE);

	for (size_t i = 0; i < STR_SIZE; i++)
		BasicString_erase(str, i);
	
	ASSERT(!memcmp(str.data, TABLE, STR_SIZE), 1);

	BasicString_destroy(str);
}

TEST insert(void)
{
	BasicString(STR_TYPE) str = BasicString_init(STR_TYPE);

	BasicString_assign(str, TABLE);

	for (ssize_t i = STR_SIZE - 1; i >= 0; i--)
		BasicString_insert(str, 0, TABLE[i]);

	ASSERT(
		!memcmp(str.data, TABLE, STR_SIZE) && \
		!memcmp(str.data + STR_SIZE, TABLE, STR_SIZE),
		1
	);	

	BasicString_destroy(str);
}

TEST copy(void)
{
	BasicString(STR_TYPE) str = BasicString_init(STR_TYPE);

	STR_TYPE arr[STR_SIZE] = {0};

	BasicString_assign(str, TABLE);

	BasicString_copy(str, arr, 0, STR_SIZE);

	ASSERT(!memcmp(str.data, arr, STR_SIZE), 1);

	BasicString_destroy(str);
}

TEST find(void)
{
	BasicString(STR_TYPE) str = BasicString_init(STR_TYPE);

	BasicString_assign(str, TABLE);

	STR_TYPE *found = BasicString_find(str, TABLE + (size_t)(STR_SIZE / 2));

	ASSERT(*found, TABLE[(size_t)(STR_SIZE / 2)]);

	BasicString_destroy(str);
}

TEST compare(void)
{
	BasicString(STR_TYPE) str1 = BasicString_init(STR_TYPE);
	BasicString(STR_TYPE) str2 = BasicString_init(STR_TYPE);

	BasicString_assign(str1, TABLE);
	BasicString_assign(str2, TABLE);
	
	ASSERT(!BasicString_compare(str1, str2), 1);

	BasicString_destroy(str1);
	BasicString_destroy(str2);
}

int main(void)
{
	return 0;
}
