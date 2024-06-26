#ifndef _CET_COMMON_H
#define _CET_COMMON_H

#if defined(__STDC_VERSION__) && \
	(__STDC_VERSION__ < 202000L) && \
	!defined(CET_FORCE)
	
	#define _CET_C23 0
#else
	#define _CET_C23 1
#endif

#endif //_CET_COMMON_H
