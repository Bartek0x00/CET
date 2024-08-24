#ifndef _CET_LIST_H
#define _CET_LIST_H

#include "Common.h"

#ifndef CET_LONG_NAMES
    #define CET_ForwardList ForwardList
    #define CET_ForwardList_define ForwardList_define
#endif //CET_LONG_NAMES

#if _CET_C23
    #define CET_ForwardList(T) _CET_ForwardList(T)
    #define _CET_ForwardList(T) \
	struct CET_ForwardList_##T { \
	    T *data; \
	    struct CET_ForwardList_##T *front; \
	}
    
    #define CET_ForwardList_define(T) _CET_ForwardList_define(T)
    #define _CET_ForwardList_define(T)

#else //_CET_C23
    #define CET_ForwardList(T) _CET_ForwardList(T)
    #define _CET_ForwardList(T) \
	struct CET_ForwardList_##T

    #define CET_ForwardList_define(T) _CET_ForwardList_define(T)
    #define _CET_ForwardList_define(T) \
	CET_ForwardList(T) { \
	    T *data; \
	    CET_ForwardList(T) *front; \
	}

#endif //_CET_C23

#define CET_ForwardList_init(T, val) \
    

#endif //_CET_LIST_H
