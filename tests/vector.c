#include "test.h"
#include "../headers/Vector.h"

#define VEC_TYPE int
#define VEC_SIZE 3

static const VEC_TYPE TABLE[VEC_SIZE] = {1, 2, 3};

static size_t vec_destructor_counter = 0;

static void vec_destructor(VEC_TYPE *element)
{
	vec_destructor_counter++;
}

Vector_define(VEC_TYPE);

TEST destroy(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE, 0);
	
	Vector_destroy(&vec);

	ASSERT(vec.data, 0);
}

TEST resize(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE, 0);

	Vector_resize(&vec, 64);

	ASSERT(vec.capacity, 64);

	Vector_destroy(&vec);
}

TEST push_back(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE, 0);

	for (size_t i = 0; i < VEC_SIZE; i++) 
		Vector_push_back(&vec, TABLE[i]);

	ASSERT((!memcmp(vec.data, TABLE, VEC_SIZE) && (vec.size == VEC_SIZE)), 1);
	
	Vector_destroy(&vec);
}

TEST pop_back(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE, 0);

	for (size_t i = 0; i < VEC_SIZE; i++)
		Vector_push_back(&vec, TABLE[i]);
	
	for (size_t i = 0; i < VEC_SIZE; i++)
		Vector_pop_back(&vec);

	ASSERT(vec.size, 0);

	Vector_destroy(&vec);
}

TEST clear(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE, 0);

	for (size_t i = 0; i < VEC_SIZE; i++) 
		Vector_push_back(&vec, TABLE[i]);
	
	Vector_clear(&vec);
	
	ASSERT(vec.size, 0);

	Vector_destroy(&vec);
}

TEST at(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE, 0);

	for (size_t i = 0; i < VEC_SIZE; i++)
		Vector_push_back(&vec, TABLE[i]);

	ASSERT(
		Vector_at(&vec, (size_t)(VEC_SIZE / 2)), 
		TABLE[(size_t)(VEC_SIZE / 2)]
	);

	Vector_destroy(&vec);
}

TEST front(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE, 0);

	for (size_t i = 0; i < VEC_SIZE; i++)
		Vector_push_back(&vec, TABLE[i]);
	
	ASSERT(Vector_front(&vec), TABLE[0]);
	
	Vector_destroy(&vec);
}

TEST back(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE, 0);

	for (size_t i = 0; i < VEC_SIZE; i++)
		Vector_push_back(&vec, TABLE[i]);

	ASSERT(Vector_back(&vec), TABLE[VEC_SIZE - 1]);

	Vector_destroy(&vec);
}

TEST erase(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE, 0);

	for (size_t i = 0; i < VEC_SIZE; i++) {
		Vector_push_back(&vec, TABLE[i]);
		Vector_push_back(&vec, TABLE[i]);
	}

	for (size_t i = 0; i < VEC_SIZE; i++)
		Vector_erase(&vec, i);

	ASSERT(!memcmp(vec.data, TABLE, VEC_SIZE), 1);

	Vector_destroy(&vec);
}

TEST insert (void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE, 0);

	for (size_t i = 0; i < VEC_SIZE; i++)
		Vector_push_back(&vec, TABLE[i]);

	for (int i = VEC_SIZE; i-- > 0; )
		Vector_insert(&vec, 0, TABLE[i]);

	ASSERT(
		!memcmp(vec.data, TABLE, VEC_SIZE) && \
		!memcmp(vec.data + VEC_SIZE, TABLE, VEC_SIZE),
		1
	);
	
	Vector_destroy(&vec);
}

TEST destructor(void)
{
	Vector(VEC_TYPE) vec = Vector_init(VEC_TYPE, vec_destructor);

	for (size_t i = 0; i < VEC_SIZE; i++)
		Vector_push_back(&vec, TABLE[i]);

	Vector_destroy(&vec);

	ASSERT(vec_destructor_counter, VEC_SIZE);	
}

int main(void)
{
	return 0;
}
