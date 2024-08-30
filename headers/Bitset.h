#ifndef _CET_BITSET_H
#define _CET_BITSET_H

#include "Common.h"

#ifndef CET_LONG_NAMES
	#define Bitset 			CET_Bitset
	#define Bitset_assign 	CET_Bitset_assign
	#define Bitset_get 		CET_Bitset_get
	#define Bitset_set 		CET_Bitset_set
	#define Bitset_reset 	CET_Bitset_reset
	#define Bitset_flip 	CET_Bitset_flip
	#define Bitset_all 		CET_Bitset_all
	#define Bitset_any 		CET_Bitset_any
	#define Bitset_none 	CET_Bitset_none
	#define Bitset_define 	CET_Bitset_define
#endif //CET_LONG_NAMES

#define CET_Bitset_block_t unsigned long
#define CET_Bitset_block_s sizeof(CET_Bitset_block_t)
#define CET_Bitset_block_b (CET_Bitset_block_s * 8)

#if _CET_C23
	#define CET_Bitset(N) _CET_Bitset(N)
	#define _CET_Bitset(N) \
		struct CET_Bitset_##N { \
			CET_Bitset_block_t data[((size_t)N + CET_Bitset_block_b - 1) / \
									CET_Bitset_block_s]; \
		}
	
	#define CET_Bitset_define(N) _CET_Bitset_define(N)
	#define _CET_Bitset_define(N)

#else //_CET_C23

	#define CET_Bitset(N) _CET_Bitset(N)
	#define _CET_Bitset(N) \
		struct CET_Bitset_##N
	
	#define CET_Bitset_define(N) _CET_Bitset_define(N)
	#define _CET_Bitset_define(N) \
		struct CET_Bitset(N) { \
			CET_Bitset_block_t data[((size_t)N + CET_Bitset_block_b - 1) / \
									CET_Bitset_block_s]; \
		}

#endif //_CET_C23

#define CET_Bitset_assign(

#endif //_CET_BITSET_H
