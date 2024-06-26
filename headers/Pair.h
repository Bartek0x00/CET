#ifndef _CET_PAIR_H
#define _CET_PAIR_H

#include "Common.h"

CET_C23_NEEDED("Pair");

#ifndef CET_LONG_NAMES
	#define Pair 		CET_Pair
	#define Pair_make 	CET_Pair_make
	#define Pair_swap	CET_Pair_swap
#endif

#define CET_Pair(T1, T2) \
	struct CET_Pair##_##T1##_##T2 { \
		T1 first; \
		T2 second; \
	}

#define CET_Pair_make(first, second, T1, T2) \
	(CET_Pair(T1, T2)){first, second}

#define CET_Pair_swap(pair, T1, T2) \
	CET_Pair(T2, T1) temp = \
	Pair_make(pair->second, pair->first, T2, T1); \
	pair = &temp; \

#endif //_CET_PAIR_H
