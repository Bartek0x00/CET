#ifndef _CET_EXCEPTION_H
#define _CET_EXCEPTION_H

#include <setjmp.h>
#include <errno.h>
#include "Common.h"

#ifndef CET_LONG_NAMES
	#define try 			CET_Exception_try
	#define catch 			CET_Exception_catch
	#define throw 			CET_Exception_throw
	#define throw_msg 		CET_Exception_throw_msg
	#define finally 		CET_Exception_finally
	#define exception 		CET_exception
#endif //CET_LONG_NAMES

#define CET_EXCEPTION_NO_MESSAGE "(NULL)"

typedef struct {
	int code;
	char *what;
} CET_Exception;

CET_Exception CET_exception = {0};
jmp_buf CET_Exception_buf = {0};

#define CET_Exception_try \
	CET_exception.code = 0; \
	CET_exception.what = CET_EXCEPTION_NO_MESSAGE; \
	if (!setjmp(CET_Exception_buf))

#define CET_Exception_catch(exception_code) \
	if (CET_exception.code && (CET_exception.code == exception_code))

#define CET_Exception_throw(exception_code) \
	do { \
		CET_exception.code = exception_code; \
		CET_exception.what = CET_EXCEPTION_NO_MESSAGE; \
		longjmp(CET_Exception_buf, 1); \
	} while (0) \

#define CET_Exception_throw_msg(exception_code, msg) \
	do { \
		CET_exception.code = exception_code; \
		CET_exception.what = msg; \
		longjmp(CET_Exception_buf, 1); \
	} while (0) \

#define CET_Exception_finally \
	if (CET_exception.code)

#endif //_CET_EXCEPTION_H
