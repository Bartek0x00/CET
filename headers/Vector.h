#ifndef _CET_VECTOR_H
#define _CET_VECTOR_H

#include <stdlib.h>
#include <string.h>
#include "Common.h"

#ifndef CET_LONG_NAMES
	#define Vector 				CET_Vector
	#define Vector_init 		CET_Vector_init
	#define Vector_clear		CET_Vector_clear
	#define Vector_at			CET_Vector_at
	#define Vector_front		CET_Vector_front
	#define Vector_back			CET_Vector_back
	#define Vector_resize 	 	CET_Vector_resize
	#define Vector_push_back 	CET_Vector_push_back
	#define Vector_pop_back		CET_Vector_pop_back
	#define Vector_erase		CET_Vector_erase
	#define Vector_insert		CET_Vector_insert
	#define Vector_destroy 		CET_Vector_destroy
	#define Vector_define		CET_Vector_define
#endif //CET_LONG_NAMES

#define CET_VECTOR_INIT_CAPACITY 8

#if CET_C23
	#define CET_Vector(T) _CET_Vector(T)
	#define _CET_Vector(T) \
		struct CET_Vector_##T { \
			T *data; \
			size_t size; \
			size_t capacity; \
		}
	
	#define CET_Vector_define(T) _CET_Vector_define(T)
	#define _CET_Vector_define(T)

#else
	#define CET_Vector(T) _CET_Vector(T)
	#define _CET_Vector(T) \
		struct CET_Vector_##T
	
	#define CET_Vector_define(T) _CET_Vector_define(T)
	#define _CET_Vector_define(T) \
		CET_Vector(T) { \
			T *data; \
			size_t size; \
			size_t capacity; \
		}
#endif

#define CET_Vector_clear(vec) do { \
	memset((vec).data, 0, sizeof(*((vec).data)) * (vec).size); \
	(vec).size = 0; \
} while (0)

#define CET_Vector_resize(vec, new_capacity) do { \
	(vec).data = CET_realloc((vec).data, \
		sizeof(*((vec).data)) * (new_capacity)); \
	if (!(vec).data) \
		CET_error("CET_Vector_resize: cannot allocate memory"); \
	(vec).capacity = new_capacity; \
} while (0)

#define CET_Vector_push_back(vec, element) do { \
	if (((vec).size + 1) > (vec).capacity) \
		CET_Vector_resize((vec), 2 * (vec).capacity); \
	(vec).data[(vec).size++] = element; \
} while (0)

#define CET_Vector_pop_back(vec) do { \
	if ((vec).size) \
		(vec).size--; \
} while (0)

#define CET_Vector_erase(vec, index) do { \
	CET_assert(!((index) < 0 || (index) >= (vec).size), \
		"CET_Vector_erase: index out of bounds"); \
	for (register size_t i = index; i < (vec).size - 1; i++) \
		(vec).data[i] = (vec).data[i + 1]; \
	(vec).size--; \
} while (0)

#define CET_Vector_insert(vec, index, element) do { \
	CET_assert(!((index) < 0 || (index) > (vec).size), \
		"CET_Vector_insert: index out of bounds"); \
	if (((vec).size + 1) > (vec).capacity) \
		CET_Vector_resize((vec), 2 * (vec).capacity); \
	(vec).size++; \
	for (register size_t i = (vec).size - 1; i > index; i--) \
		(vec).data[i] = (vec).data[i - 1]; \
	(vec).data[index] = element; \
} while (0)

#define CET_Vector_at(vec, index) ({ \
	CET_assert(!((index) < 0 || (index) >= (vec).size), \
		"CET_Vector_at: index out of bounds"); \
	(vec).data[index]; \
})

#define CET_Vector_front(vec) CET_Vector_at(vec, 0)

#define CET_Vector_back(vec) CET_Vector_at(vec, (vec).size - 1)


#define CET_Vector_init(T) \
	{CET_calloc(sizeof(T), CET_VECTOR_INIT_CAPACITY), \
	 0, CET_VECTOR_INIT_CAPACITY}

#define CET_Vector_destroy(vec) do { \
	if (!(vec).data) \
		CET_free((vec).data); \
	(vec).data = (void *)0; \
	(vec).size = (size_t)0; \
	(vec).capacity = (size_t)0; \
} while (0)

#endif //_CET_VECTOR_H
