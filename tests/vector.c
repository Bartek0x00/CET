#include "test.h"
#include "../headers/Vector.h"

#define VEC_TYPE int
#define VEC_SIZE 3

static const VEC_TYPE TABLE[VEC_SIZE] = {1, 2, 3};

Vector_define(VEC_TYPE);

TEST destroy(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE);
	
	Vector_destroy(vec);

	ASSERT(vec.data, 0);
}

TEST resize(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE);

	Vector_resize(vec, 64);

	ASSERT(vec.capacity, 64);

	Vector_destroy(vec);
}

TEST push_back(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE);

	for (size_t i = 0; i < VEC_SIZE; i++) 
		Vector_push_back(vec, TABLE[i]);

	ASSERT((!memcmp(vec.data, TABLE, VEC_SIZE) && (vec.size == VEC_SIZE)), 1);
	
	Vector_destroy(vec);
}

TEST pop_back(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE);

	for (size_t i = 0; i < VEC_SIZE; i++)
		Vector_push_back(vec, TABLE[i]);
	
	for (size_t i = 0; i < VEC_SIZE; i++)
		Vector_pop_back(vec);

	ASSERT(vec.size, 0);

	Vector_destroy(vec);
}

TEST clear(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE);

	for (size_t i = 0; i < VEC_SIZE; i++) 
		Vector_push_back(vec, TABLE[i]);
	
	Vector_clear(vec);
	
	ASSERT(vec.size, 0);

	Vector_destroy(vec);
}

TEST at(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE);

	for (size_t i = 0; i < VEC_SIZE; i++)
		Vector_push_back(vec, TABLE[i]);

	ASSERT(
		Vector_at(vec, (size_t)(VEC_SIZE / 2)), 
		TABLE[(size_t)(VEC_SIZE / 2)]
	);

	Vector_destroy(vec);
}

TEST front(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE);

	for (size_t i = 0; i < VEC_SIZE; i++)
		Vector_push_back(vec, TABLE[i]);
	
	ASSERT(Vector_front(vec), TABLE[0]);
	
	Vector_destroy(vec);
}

TEST back(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE);

	for (size_t i = 0; i < VEC_SIZE; i++)
		Vector_push_back(vec, TABLE[i]);

	ASSERT(Vector_back(vec), TABLE[VEC_SIZE - 1]);

	Vector_destroy(vec);
}

TEST erase(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE);

	for (size_t i = 0; i < VEC_SIZE; i++) {
		Vector_push_back(vec, TABLE[i]);
		Vector_push_back(vec, TABLE[i]);
	}

	for (size_t i = 0; i < VEC_SIZE; i++)
		Vector_erase(vec, i);

	ASSERT(!memcmp(vec.data, TABLE, VEC_SIZE), 1);

	Vector_destroy(vec);
}

TEST insert (void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE);

	for (size_t i = 0; i < VEC_SIZE; i++)
		Vector_push_back(vec, TABLE[i]);

	for (ssize_t i = VEC_SIZE - 1; i >= 0; i--)
		Vector_insert(vec, 0, TABLE[i]);

	ASSERT(
		!memcmp(vec.data, TABLE, VEC_SIZE) && \
		!memcmp(vec.data + VEC_SIZE, TABLE, VEC_SIZE),
		1
	);
	
	Vector_destroy(vec);
}

int main(void)
{
	return 0;
}
