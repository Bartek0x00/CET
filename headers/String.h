#ifndef _CET_STRING_H
#define _CET_STRING_H

#include <stdlib.h>
#include <string.h>
#include "Common.h"

#ifndef CET_LONG_NAMES
	#define BasicString				CET_BasicString
	#define BasicString_init		CET_BasicString_init
	#define BasicString_clear 		CET_BasicString_clear
	#define BasicString_at 			CET_BasicString_at
	#define BasicString_front 		CET_BasicString_front
	#define BasicString_back 		CET_BasicString_back
	#define BasicString_resize 		CET_BasicString_resize
	#define BasicString_push_back	CET_BasicString_push_back
	#define BasicString_pop_back	CET_BasicString_pop_back
	#define BasicString_erase		CET_BasicString_erase
	#define BasicString_insert		CET_BasicString_insert
	#define BasicString_append		CET_BasicString_append
	#define BasicString_assign 		CET_BasicString_assign
	#define BasicString_copy 		CET_BasicString_copy
	#define BasicString_find 		CET_BasicString_find
	#define BasicString_compare 	CET_BasicString_compare
	#define BasicString_destroy 	CET_BasicString_destroy
	#define BasicString_define 		CET_BasicString_define


	#define String 					CET_String
	#define String_init 			CET_String_init
	#define String_clear 			CET_String_clear
	#define String_at 				CET_String_at
	#define String_front 			CET_String_front
	#define String_back 			CET_String_back
	#define String_resize 			CET_String_resize
	#define String_push_back 		CET_String_push_back
	#define String_pop_back 		CET_String_pop_back
	#define String_erase 			CET_String_erase
	#define String_insert 			CET_String_insert
	#define String_append 			CET_String_append
	#define String_assign 			CET_String_assign
	#define String_copy 			CET_String_copy
	#define String_find 			CET_String_find
	#define String_compare 			CET_String_compare
	#define String_destroy 			CET_String_destroy
	#define String_define 			CET_String_define

	#define WString 				CET_WString
	#define WString_init 			CET_WString_init
	#define WString_clear 			CET_WString_clear
	#define WString_at 				CET_WString_at
	#define WString_front 			CET_WString_front
	#define WString_back 			CET_WString_back
	#define WString_resize 			CET_WString_resize
	#define WString_push_back 		CET_WString_push_back
	#define WString_pop_back 		CET_WString_pop_back
	#define WString_erase 			CET_WString_erase
	#define WString_insert 			CET_WString_insert
	#define WString_append 			CET_WString_append
	#define WString_assign 			CET_WString_assign
	#define WString_copy 			CET_WString_copy
	#define WString_find 			CET_WString_find
	#define WString_compare 		CET_WString_compare
	#define WString_destroy 		CET_WString_destroy
	#define WString_define 			CET_WString_define

#endif //CET_LONG_NAMES

#define CET_String 				CET_BasicString(char)
#define CET_String_init 		CET_BasicString_init(char, 0)
#define CET_String_clear 		CET_BasicString_clear
#define CET_String_at 			CET_BasicString_at
#define CET_String_front 		CET_BasicString_front
#define CET_String_back 		CET_BasicString_back
#define CET_String_resize 		CET_BasicString_resize
#define CET_String_push_back 	CET_BasicString_push_back
#define CET_String_pop_back 	CET_BasicString_pop_back
#define CET_String_erase 		CET_BasicString_erase
#define CET_String_insert 		CET_BasicString_insert
#define CET_String_append 		CET_BasicString_append
#define CET_String_assign 		CET_BasicString_assign
#define CET_String_copy 		CET_BasicString_copy
#define CET_String_find 		CET_BasicString_find
#define CET_String_compare 		CET_BasicString_compare
#define CET_String_destroy 		CET_BasicString_destroy
#define CET_String_define 		CET_BasicString_define(char)

#define CET_WString 			CET_BasicString(wchar_t)
#define CET_WString_init 		CET_BasicString_init(wchar_t, 0)
#define CET_WString_clear 		CET_BasicString_clear
#define CET_WString_at 			CET_BasicString_at
#define CET_WString_front 		CET_BasicString_front
#define CET_WString_back 		CET_BasicString_back
#define CET_WString_resize 		CET_BasicString_resize
#define CET_WString_push_back 	CET_BasicString_push_back
#define CET_WString_pop_back 	CET_BasicString_pop_back
#define CET_WString_erase 		CET_BasicString_erase
#define CET_WString_insert 		CET_BasicString_insert
#define CET_WString_append 		CET_BasicString_append
#define CET_WString_assign 		CET_BasicString_assign
#define CET_WString_copy 		CET_BasicString_copy
#define CET_WString_find 		CET_BasicString_find
#define CET_WString_compare 	CET_BasicString_compare
#define CET_WString_destroy 	CET_BasicString_destroy
#define CET_WString_define 		CET_BasicString_define(wchar_t)

#define CET_BASICSTRING_INIT_CAPACITY 8

#if CET_C23
	#define CET_BasicString(T) _CET_BasicString(T)
	#define _CET_BasicString(T) \
		struct CET_BasicString_##T { \
			T *data; \
			size_t length; \
			size_t capacity; \
			void (*destructor)(T*); \
		}
	
	#define CET_BasicString_define(T) _CET_BasicString_define(T)
	#define _CET_BasicString_define(T)

#else
	#define CET_BasicString(T) _CET_BasicString(T)
	#define _CET_BasicString(T) \
		struct CET_BasicString_##T
	
	#define CET_BasicString_define(T) _CET_BasicString_define(T)
	#define _CET_BasicString_define(T) \
		CET_BasicString(T) { \
			T *data; \
			size_t length; \
			size_t capacity; \
			void (*destructor)(T*); \
		}
#endif

#define CET_BasicString_clear(str) do { \
	if ((str)->destructor) \
		for (register size_t i = (str)->length; i-- > 0; ) \
			(str)->destructor((str)->data + i); \
	memset((str)->data, 0, sizeof(*((str)->data)) * (str)->length); \
	(str)->length = 0; \
} while (0)

#define CET_BasicString_resize(str, new_capacity) do { \
	(str)->data = realloc((str)->data, \
		sizeof(*((str)->data)) * (new_capacity)); \
	if (!(str)->data) \
		CET_error("CET_BasicString_resize: cannot allocate memory"); \
	(str)->capacity = new_capacity; \
} while (0)

#define CET_BasicString_push_back(str, element) do { \
    if (((str)->length + 1) > (str)->capacity) \
        CET_BasicString_resize((str), 2 * (str)->capacity); \
    (str)->data[(str)->length++] = element; \
} while (0)

#define CET_BasicString_pop_back(str) do { \
    if ((str)->destructor) \
		(str)->destructor((str)->data + ((str)->length - 1)); \
	if ((str)->length) \
        (str)->length--; \
} while (0)

#define CET_BasicString_erase(str, index) do { \
    CET_assert(!((index) < 0 || (index) >= (str)->length), \
        "CET_BasicString_erase: index out of bounds"); \
	if ((str)->destructor) \
		(str)->destructor((str)->data + (index)); \
    for (register size_t i = index; i < (str)->length - 1; i++) \
        (str)->data[i] = (str)->data[i + 1]; \
    (str)->length--; \
} while (0)

#define CET_BasicString_insert(str, index, element) do { \
    CET_assert(!((index) < 0 || (index) > (str)->length), \
        "CET_BasicString_insert: index out of bounds"); \
    if (((str)->length + 1) > (str)->capacity) \
        CET_BasicString_resize((str), 2 * (str)->capacity); \
    (str)->length++; \
	for (register size_t i = (str)->length - 1; i > index; i--) \
        (str)->data[i] = (str)->data[i - 1]; \
    (str)->data[index] = element; \
} while (0)

#define CET_BasicString_at(str, index) ({ \
	CET_assert(!((index) < 0 || (index) >= (str)->length), \
		"CET_BasicString_at: index out of bounds"); \
	(str)->data[index]; \
})

#define CET_BasicString_front(str) CET_BasicString_at(str, 0)

#define CET_BasicString_back(str) CET_BasicString_at(str, (str)->length - 1)

#define CET_BasicString_append(str, ptr) do { \
	for (register size_t i = 0; i < strlen(ptr); i++) \
		CET_BasicString_push_back(str, ptr[i]); \
} while (0)

#define CET_BasicString_assign(str, ptr) do { \
	CET_BasicString_clear(str); \
	CET_BasicString_append(str, ptr); \
} while (0)

#define CET_BasicString_copy(str, dest, pos, len) do { \
	if (!len) \
		memcpy(dest, ((str)->data + pos), (str)->length); \
	else \
		memcpy(dest, ((str)->data + pos), len); \
} while (0)

#define CET_BasicString_find(str, target) \
	strstr((str)->data, target)

#define CET_BasicString_compare(str1, str2) \
	strcmp((str1)->data, (str2)->data)

#define CET_BasicString_init(T, destructor) \
	{calloc(sizeof(T), CET_BASICSTRING_INIT_CAPACITY), \
	 0, CET_BASICSTRING_INIT_CAPACITY, destructor}

#define CET_BasicString_destroy(str) do { \
	CET_BasicString_clear(str); \
	if (!(str)->data) \
		free((str)->data); \
	(str)->data = (void *)0; \
	(str)->length = (size_t)0; \
	(str)->capacity = (size_t)0; \
} while (0)

#endif //_CET_STRING_H
