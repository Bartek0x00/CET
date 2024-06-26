#ifndef _CET_VECTOR_H
#define _CET_VECTOR_H

#include <stdlib.h>
#include "Common.h"

#ifndef CET_LONG_NAMES
	#define Vector 				CET_Vector
	#define Vector_init 		CET_Vector_init
	#define Vector_resize 	 	CET_Vector_resize
	#define Vector_push_back 	CET_Vector_push_back
	#define Vector_destroy 		CET_Vector_destroy
#endif

#define CET_VECTOR_INIT_SIZE 8

#define CET_Vector(T) \
	struct CET_Vector##_##T { \
		T *data; \
		size_t size; \
		size_t count; \
		size_t capacity; \
	}

#define CET_Vector_init(T) \
	(struct CET_Vector##_##T){calloc(sizeof(T), CET_VECTOR_INIT_SIZE), \
	 sizeof(T), 0, CET_VECTOR_INIT_SIZE}

#define CET_Vector_resize(vec, new_capacity) do { \
	(vec)->data = realloc((vec)->data, ((vec)->size * new_capacity)); \
	(vec)->capacity = new_capacity; \
} while (0)

#define _CET_Vector_push_back(vec, element, type) do { \
	if (((vec)->count + 1) > (vec)->capacity) \
		CET_Vector_resize((vec), (2 * (vec)->capacity)); \
	type vec[(vec)->count++] = element; \
} while (0)

#if CET_C23
	#define CET_Vector_push_back(vec, element) \
		_CET_Vector_push_back(vec, element, typeof(element))
#else
	#define CET_Vector_push_back _CET_Vector_push_back
#endif

#define CET_Vector_destroy(vec) do { \
	if (!(vec)->data) \
		free((vec)->data); \
	(vec)->size = (size_t)0; \
	(vec)->count = (size_t)0; \
	(vec)->capacity = (size_t)0; \
} while (0)

#endif //_CET_VECTOR_H
