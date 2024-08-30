#ifndef _CET_COMMON_H
#define _CET_COMMON_H

#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

#if defined(__STDC_VERSION__) && (__STDC_VERSION__ < 202000L)
	#define _CET_C23 false
#else
	#define _CET_C23 true
#endif

#if _CET_C23
	#define CET_static_assert(expr, msg) static_assert((expr), msg)
#else
	#define CET_static_assert(expr, msg) _Static_assert((expr), msg)
#endif

#define CET_assert(expr, msg) \
	((expr)) ? (void)0 : \
	(fprintf(stderr, "%s, file: %s, line: %d\n", \
	 msg, __FILE__, __LINE__), \
	 exit(EXIT_FAILURE))

#define CET_error(msg) CET_assert(0, msg);

#endif //_CET_COMMON_H
