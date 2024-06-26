#ifndef _CET_PAIR_H
#define _CET_PAIR_H

#include "Common.h"

#ifndef CET_LONG_NAMES
	#define Pair 		CET_Pair
	#define Pair_make 	CET_Pair_make
#endif //CET_LONG_NAMES

#define CET_Pair(T1, T2) \
	struct CET_Pair##_##T1##_##T2 { \
		T1 first; \
		T2 second; \
	}

#if _CET_C23
	#ifdef CET_STRICT_TYPES
		#define CET_Pair_make(first, second, T1, T2) \
			(CET_Pair(T1, T2)){first, second}
	#else
		#define CET_Pair_make(first, second) {first, second}
	#endif //CET_STRICT_TYPES
#else
	#define CET_Pair_make(first, second) {first, second}	
#endif //_CET_C23

#endif //_CET_PAIR_H
