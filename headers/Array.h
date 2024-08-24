#ifndef _CET_ARRAY_H
#define _CET_ARRAY_H

#include <string.h>
#include "Common.h"

#ifndef CET_LONG_NAMES
	#define Array 			CET_Array
	#define Array_init		CET_Array_init
	#define Array_make		CET_Array_make
	#define Array_to_array	CET_Array_to_array
	#define Array_at		CET_Array_at
	#define Array_front		CET_Array_front
	#define Array_back		CET_Array_back
	#define Array_fill		CET_Array_fill
	#define Array_define 	CET_Array_define
#endif //CET_LONG_NAMES

#if _CET_C23

#define CET_Array(T, N) _CET_Array(T, N)
#define _CET_Array(T, N) \
	struct CET_Array_##T##_##N { \
		const size_t size; \
		T data[N]; \
	}

#define CET_Array_define(T, N) _CET_Array_define(T, N)
#define _CET_Array_define(T, N)

#else //_CET_C23

#define CET_Array(T, N) _CET_Array(T, N)
#define _CET_Array(T, N) \
	struct CET_Array_##T##_##N

#define CET_Array_define(T, N) _CET_Array_define(T, N)
#define _CET_Array_define(T, N) \
	struct CET_Array_##T##_##N { \
		const size_t size; \
		T data[N]; \
	}

#endif //_CET_C23

#define CET_Array_init(N) { \
	.size = N, \
	.data = {0} \
}

#define CET_Array_make(T, ...) { \
	.size = (sizeof((T[]){__VA_ARGS__}) / sizeof(T)), \
	.data = {__VA_ARGS__} \
}

#define CET_Array_to_array(arr, in_arr) \
	memcpy(arr.data, in_arr, arr.size); 

#define CET_Array_at(arr, index) ({ \
	CET_assert(!((index) < 0 || (index) >= (arr).size), \
		"CET_Array_at: index out of bounds"); \
	(arr).data[index]; \
})

#define CET_Array_front(arr) CET_Array_at(arr, 0)

#define CET_Array_back(arr) CET_Array_at(arr, (arr).size - 1)

#define CET_Array_fill(arr, value) do { \
	CET_assert(!(sizeof(value) > sizeof(*(arr).data)), \
		"CET_Array_fill: index out of bounds"); \
	for (register size_t i = 0; i < (arr).size; i++) \
		(arr).data[i] = value; \
} while (0)

#endif //_CET_ARRAY_H
