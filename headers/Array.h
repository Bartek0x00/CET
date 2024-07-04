#ifndef _CET_ARRAY_H
#define _CET_ARRAY_H

#include "Common.h"

#ifndef CET_LONG_NAMES
	#define Array 			CET_Array
	#define Array_make		CET_Array_make
	#define Array_at		CET_Array_at
	#define Array_define 	CET_Array_define
#endif //CET_LONG_NAMES

#if _CET_C23

#define CET_Array(T, N) \
	struct CET_Array##_##T##_##N { \
		const size_t size; \
		T data[N]; \
	}

#define CET_Array_define(T, N)

#else //_CET_C23

#define CET_Array(T, N) \
	struct CET_Array##_##T##_##N

#define CET_Array_define(T, N) \
	CET_Array(T, N) { \
		const size_t size; \
		T data[N]; \
	}

#endif //_CET_C23

#ifndef CET_STRICT_TYPES
#endif //CET_STRICT_TYPES

#define CET_Array_at(arr, index) ({ \
	CET_assert(!((index) < 0 || (index) >= arr.size), \
		"CET_Array_at: index out of bounds"); \
	arr.data[index]; \
})

#endif //_CET_ARRAY_H
