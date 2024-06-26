#ifndef _CET_COMMON_H
#define _CET_COMMON_H

#if defined(__STDC_VERSION__) && \
	(__STDC_VERSION__ < 202000L) && \
	!defined(CET_FORCE)
	
	#define CET_C23 0
#else
	#define CET_C23 1
#endif

#define CET_C23_NEEDED(name) \
	_Static_assert(CET_C23, name ": C23 version needed")

#endif //_CET_COMMON_H
