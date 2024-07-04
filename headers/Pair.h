#ifndef _CET_PAIR_H
#define _CET_PAIR_H

#include "Common.h"

#ifndef CET_LONG_NAMES
	#define Pair 		CET_Pair
	#define Pair_make 	CET_Pair_make
	#define Pair_define CET_Pair_define
#endif //CET_LONG_NAMES

#if _CET_C23

#define CET_Pair(T1, T2) \
	struct CET_Pair##_##T1##_##T2 { \
		T1 first; \
		T2 second; \
	}

#define CET_Pair_define(T1, T2)

#else //_CET_C23

#define CET_Pair(T1, T2) \
	struct CET_Pair##_##T1##_##T2

#define CET_Pair_define(T1, T2) \
	CET_Pair(T1, T2) { \
		T1 first; \
		T2 second; \
	}

#endif //_CET_C23

#ifndef CET_STRICT_TYPES
	#define CET_Pair_make(first, second) {first, second}
#else
	#define CET_Pair_make(first, second, T1, T2) \
		(CET_Pair(T1, T2)){first, second}
#endif //CET_STRICT_TYPES

#endif //_CET_PAIR_H
