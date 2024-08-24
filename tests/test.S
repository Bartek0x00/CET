# 1 "array.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 402 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "array.c" 2
# 1 "./test.h" 1



# 1 "/data/data/com.termux/files/usr/include/stdio.h" 1 3 4
# 41 "/data/data/com.termux/files/usr/include/stdio.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/sys/cdefs.h" 1 3 4
# 380 "/data/data/com.termux/files/usr/include/sys/cdefs.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/android/versioning.h" 1 3 4
# 381 "/data/data/com.termux/files/usr/include/sys/cdefs.h" 2 3 4
# 1 "/data/data/com.termux/files/usr/include/android/api-level.h" 1 3 4
# 191 "/data/data/com.termux/files/usr/include/android/api-level.h" 3 4
int android_get_application_target_sdk_version() __attribute__((__availability__(android,strict,introduced=24)));







# 1 "/data/data/com.termux/files/usr/include/bits/get_device_api_level_inlines.h" 1 3 4
# 38 "/data/data/com.termux/files/usr/include/bits/get_device_api_level_inlines.h" 3 4
int __system_property_get(const char* _Nonnull __name, char* _Nonnull __value);
int atoi(const char* _Nonnull __s) __attribute__((__pure__));

static __inline int android_get_device_api_level() {
  char value[92] = { 0 };
  if (__system_property_get("ro.build.version.sdk", value) < 1) return -1;
  int api_level = atoi(value);
  return (api_level > 0) ? api_level : -1;
}
# 200 "/data/data/com.termux/files/usr/include/android/api-level.h" 2 3 4
# 382 "/data/data/com.termux/files/usr/include/sys/cdefs.h" 2 3 4

# 1 "/data/data/com.termux/files/usr/include/android/ndk-version.h" 1 3 4
# 384 "/data/data/com.termux/files/usr/include/sys/cdefs.h" 2 3 4
# 42 "/data/data/com.termux/files/usr/include/stdio.h" 2 3 4
# 1 "/data/data/com.termux/files/usr/include/sys/types.h" 1 3 4
# 32 "/data/data/com.termux/files/usr/include/sys/types.h" 3 4
# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/stddef.h" 1 3 4
# 72 "/data/data/com.termux/files/usr/lib/clang/18/include/stddef.h" 3 4
# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/__stddef_ptrdiff_t.h" 1 3 4
# 18 "/data/data/com.termux/files/usr/lib/clang/18/include/__stddef_ptrdiff_t.h" 3 4
typedef long int ptrdiff_t;
# 73 "/data/data/com.termux/files/usr/lib/clang/18/include/stddef.h" 2 3 4




# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/__stddef_size_t.h" 1 3 4
# 18 "/data/data/com.termux/files/usr/lib/clang/18/include/__stddef_size_t.h" 3 4
typedef long unsigned int size_t;
# 78 "/data/data/com.termux/files/usr/lib/clang/18/include/stddef.h" 2 3 4
# 87 "/data/data/com.termux/files/usr/lib/clang/18/include/stddef.h" 3 4
# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/__stddef_wchar_t.h" 1 3 4
# 24 "/data/data/com.termux/files/usr/lib/clang/18/include/__stddef_wchar_t.h" 3 4
typedef unsigned int wchar_t;
# 88 "/data/data/com.termux/files/usr/lib/clang/18/include/stddef.h" 2 3 4




# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/__stddef_null.h" 1 3 4
# 93 "/data/data/com.termux/files/usr/lib/clang/18/include/stddef.h" 2 3 4




# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/__stddef_nullptr_t.h" 1 3 4
# 26 "/data/data/com.termux/files/usr/lib/clang/18/include/__stddef_nullptr_t.h" 3 4
typedef typeof(nullptr) nullptr_t;
# 98 "/data/data/com.termux/files/usr/lib/clang/18/include/stddef.h" 2 3 4




# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/__stddef_unreachable.h" 1 3 4
# 103 "/data/data/com.termux/files/usr/lib/clang/18/include/stddef.h" 2 3 4




# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/__stddef_max_align_t.h" 1 3 4
# 19 "/data/data/com.termux/files/usr/lib/clang/18/include/__stddef_max_align_t.h" 3 4
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 108 "/data/data/com.termux/files/usr/lib/clang/18/include/stddef.h" 2 3 4




# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/__stddef_offsetof.h" 1 3 4
# 113 "/data/data/com.termux/files/usr/lib/clang/18/include/stddef.h" 2 3 4
# 33 "/data/data/com.termux/files/usr/include/sys/types.h" 2 3 4
# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/stdint.h" 1 3 4
# 52 "/data/data/com.termux/files/usr/lib/clang/18/include/stdint.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/stdint.h" 1 3 4
# 32 "/data/data/com.termux/files/usr/include/stdint.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/bits/wchar_limits.h" 1 3 4
# 33 "/data/data/com.termux/files/usr/include/stdint.h" 2 3 4
# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/stddef.h" 1 3 4
# 34 "/data/data/com.termux/files/usr/include/stdint.h" 2 3 4


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;

typedef long __int64_t;
typedef unsigned long __uint64_t;






typedef long __intptr_t;
typedef unsigned long __uintptr_t;





typedef __int8_t int8_t;
typedef __uint8_t uint8_t;

typedef __int16_t int16_t;
typedef __uint16_t uint16_t;

typedef __int32_t int32_t;
typedef __uint32_t uint32_t;

typedef __int64_t int64_t;
typedef __uint64_t uint64_t;

typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;

typedef int8_t int_least8_t;
typedef uint8_t uint_least8_t;

typedef int16_t int_least16_t;
typedef uint16_t uint_least16_t;

typedef int32_t int_least32_t;
typedef uint32_t uint_least32_t;

typedef int64_t int_least64_t;
typedef uint64_t uint_least64_t;

typedef int8_t int_fast8_t;
typedef uint8_t uint_fast8_t;

typedef int64_t int_fast64_t;
typedef uint64_t uint_fast64_t;


typedef int64_t int_fast16_t;
typedef uint64_t uint_fast16_t;
typedef int64_t int_fast32_t;
typedef uint64_t uint_fast32_t;







typedef uint64_t uintmax_t;
typedef int64_t intmax_t;
# 53 "/data/data/com.termux/files/usr/lib/clang/18/include/stdint.h" 2 3 4
# 34 "/data/data/com.termux/files/usr/include/sys/types.h" 2 3 4


# 1 "/data/data/com.termux/files/usr/include/linux/types.h" 1 3 4
# 21 "/data/data/com.termux/files/usr/include/linux/types.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/aarch64-linux-android/asm/types.h" 1 3 4
# 19 "/data/data/com.termux/files/usr/include/aarch64-linux-android/asm/types.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/asm-generic/types.h" 1 3 4
# 21 "/data/data/com.termux/files/usr/include/asm-generic/types.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/asm-generic/int-ll64.h" 1 3 4
# 21 "/data/data/com.termux/files/usr/include/asm-generic/int-ll64.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/aarch64-linux-android/asm/bitsperlong.h" 1 3 4
# 22 "/data/data/com.termux/files/usr/include/aarch64-linux-android/asm/bitsperlong.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/asm-generic/bitsperlong.h" 1 3 4
# 23 "/data/data/com.termux/files/usr/include/aarch64-linux-android/asm/bitsperlong.h" 2 3 4
# 22 "/data/data/com.termux/files/usr/include/asm-generic/int-ll64.h" 2 3 4

typedef __signed__ char __s8;
typedef unsigned char __u8;
typedef __signed__ short __s16;
typedef unsigned short __u16;
typedef __signed__ int __s32;
typedef unsigned int __u32;

__extension__ typedef __signed__ long long __s64;
__extension__ typedef unsigned long long __u64;
# 22 "/data/data/com.termux/files/usr/include/asm-generic/types.h" 2 3 4
# 20 "/data/data/com.termux/files/usr/include/aarch64-linux-android/asm/types.h" 2 3 4
# 22 "/data/data/com.termux/files/usr/include/linux/types.h" 2 3 4

# 1 "/data/data/com.termux/files/usr/include/linux/posix_types.h" 1 3 4
# 21 "/data/data/com.termux/files/usr/include/linux/posix_types.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/linux/stddef.h" 1 3 4
# 21 "/data/data/com.termux/files/usr/include/linux/stddef.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/linux/compiler_types.h" 1 3 4
# 11 "/data/data/com.termux/files/usr/include/linux/compiler_types.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/linux/compiler.h" 1 3 4
# 12 "/data/data/com.termux/files/usr/include/linux/compiler_types.h" 2 3 4
# 22 "/data/data/com.termux/files/usr/include/linux/stddef.h" 2 3 4
# 22 "/data/data/com.termux/files/usr/include/linux/posix_types.h" 2 3 4


typedef struct {
  unsigned long fds_bits[1024 / (8 * sizeof(long))];
} __kernel_fd_set;
typedef void(* __kernel_sighandler_t) (int);
typedef int __kernel_key_t;
typedef int __kernel_mqd_t;
# 1 "/data/data/com.termux/files/usr/include/aarch64-linux-android/asm/posix_types.h" 1 3 4
# 21 "/data/data/com.termux/files/usr/include/aarch64-linux-android/asm/posix_types.h" 3 4
typedef unsigned short __kernel_old_uid_t;
typedef unsigned short __kernel_old_gid_t;

# 1 "/data/data/com.termux/files/usr/include/asm-generic/posix_types.h" 1 3 4
# 23 "/data/data/com.termux/files/usr/include/asm-generic/posix_types.h" 3 4
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;


typedef __kernel_ulong_t __kernel_ino_t;


typedef unsigned int __kernel_mode_t;


typedef int __kernel_pid_t;


typedef int __kernel_ipc_pid_t;


typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;


typedef __kernel_long_t __kernel_suseconds_t;


typedef int __kernel_daddr_t;


typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;






typedef unsigned int __kernel_old_dev_t;







typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef __kernel_long_t __kernel_ptrdiff_t;



typedef struct {
  int val[2];
} __kernel_fsid_t;

typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_old_time_t;
typedef __kernel_long_t __kernel_time_t;
typedef long long __kernel_time64_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef char * __kernel_caddr_t;
typedef unsigned short __kernel_uid16_t;
typedef unsigned short __kernel_gid16_t;
# 25 "/data/data/com.termux/files/usr/include/aarch64-linux-android/asm/posix_types.h" 2 3 4
# 31 "/data/data/com.termux/files/usr/include/linux/posix_types.h" 2 3 4
# 24 "/data/data/com.termux/files/usr/include/linux/types.h" 2 3 4


typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u64 __be64;
typedef __u16 __sum16;
typedef __u32 __wsum;



typedef unsigned __poll_t;
# 37 "/data/data/com.termux/files/usr/include/sys/types.h" 2 3 4


# 1 "/data/data/com.termux/files/usr/include/bits/pthread_types.h" 1 3 4
# 32 "/data/data/com.termux/files/usr/include/bits/pthread_types.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/sys/types.h" 1 3 4
# 33 "/data/data/com.termux/files/usr/include/bits/pthread_types.h" 2 3 4

typedef struct {
  uint32_t flags;
  void* stack_base;
  size_t stack_size;
  size_t guard_size;
  int32_t sched_policy;
  int32_t sched_priority;

  char __reserved[16];

} pthread_attr_t;


typedef struct {

  int64_t __private[4];



} pthread_barrier_t;



typedef int pthread_barrierattr_t;


typedef struct {

  int32_t __private[12];



} pthread_cond_t;

typedef long pthread_condattr_t;

typedef int pthread_key_t;

typedef struct {

  int32_t __private[10];



} pthread_mutex_t;

typedef long pthread_mutexattr_t;

typedef int pthread_once_t;

typedef struct {

  int32_t __private[14];



} pthread_rwlock_t;

typedef long pthread_rwlockattr_t;


typedef struct {

  int64_t __private;



} pthread_spinlock_t;


typedef long pthread_t;
# 40 "/data/data/com.termux/files/usr/include/sys/types.h" 2 3 4


typedef __kernel_gid32_t __gid_t;
typedef __gid_t gid_t;
typedef __kernel_uid32_t __uid_t;
typedef __uid_t uid_t;
typedef __kernel_pid_t __pid_t;
typedef __pid_t pid_t;
typedef uint32_t __id_t;
typedef __id_t id_t;

typedef unsigned long blkcnt_t;
typedef unsigned long blksize_t;
typedef __kernel_caddr_t caddr_t;
typedef __kernel_clock_t clock_t;

typedef __kernel_clockid_t __clockid_t;
typedef __clockid_t clockid_t;

typedef __kernel_daddr_t daddr_t;
typedef unsigned long fsblkcnt_t;
typedef unsigned long fsfilcnt_t;

typedef __kernel_mode_t __mode_t;
typedef __mode_t mode_t;

typedef __kernel_key_t __key_t;
typedef __key_t key_t;

typedef __kernel_ino_t __ino_t;
typedef __ino_t ino_t;

typedef uint64_t ino64_t;

typedef uint32_t __nlink_t;
typedef __nlink_t nlink_t;

typedef void* __timer_t;
typedef __timer_t timer_t;

typedef __kernel_suseconds_t __suseconds_t;
typedef __suseconds_t suseconds_t;


typedef uint32_t __useconds_t;
typedef __useconds_t useconds_t;





typedef uint64_t dev_t;



typedef __kernel_time_t __time_t;
typedef __time_t time_t;




typedef int64_t off_t;
typedef off_t loff_t;
typedef loff_t off64_t;
# 115 "/data/data/com.termux/files/usr/include/sys/types.h" 3 4
typedef uint32_t __socklen_t;

typedef __socklen_t socklen_t;

typedef __builtin_va_list __va_list;
# 128 "/data/data/com.termux/files/usr/include/sys/types.h" 3 4
typedef __kernel_ssize_t ssize_t;


typedef unsigned int uint_t;
typedef unsigned int uint;


typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;

typedef uint32_t u_int32_t;
typedef uint16_t u_int16_t;
typedef uint8_t u_int8_t;
typedef uint64_t u_int64_t;
# 43 "/data/data/com.termux/files/usr/include/stdio.h" 2 3 4

# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/stdarg.h" 1 3 4
# 55 "/data/data/com.termux/files/usr/lib/clang/18/include/stdarg.h" 3 4
# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/__stdarg___gnuc_va_list.h" 1 3 4
# 12 "/data/data/com.termux/files/usr/lib/clang/18/include/__stdarg___gnuc_va_list.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 56 "/data/data/com.termux/files/usr/lib/clang/18/include/stdarg.h" 2 3 4




# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/__stdarg_va_list.h" 1 3 4
# 12 "/data/data/com.termux/files/usr/lib/clang/18/include/__stdarg_va_list.h" 3 4
typedef __builtin_va_list va_list;
# 61 "/data/data/com.termux/files/usr/lib/clang/18/include/stdarg.h" 2 3 4




# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/__stdarg_va_arg.h" 1 3 4
# 66 "/data/data/com.termux/files/usr/lib/clang/18/include/stdarg.h" 2 3 4




# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/__stdarg___va_copy.h" 1 3 4
# 71 "/data/data/com.termux/files/usr/lib/clang/18/include/stdarg.h" 2 3 4




# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/__stdarg_va_copy.h" 1 3 4
# 76 "/data/data/com.termux/files/usr/lib/clang/18/include/stdarg.h" 2 3 4
# 45 "/data/data/com.termux/files/usr/include/stdio.h" 2 3 4
# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/stddef.h" 1 3 4
# 46 "/data/data/com.termux/files/usr/include/stdio.h" 2 3 4

# 1 "/data/data/com.termux/files/usr/include/aarch64-linux-android/asm/fcntl.h" 1 3 4
# 25 "/data/data/com.termux/files/usr/include/aarch64-linux-android/asm/fcntl.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/asm-generic/fcntl.h" 1 3 4
# 21 "/data/data/com.termux/files/usr/include/asm-generic/fcntl.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/bits/flock64.h" 1 3 4
# 22 "/data/data/com.termux/files/usr/include/asm-generic/fcntl.h" 2 3 4
# 1 "/data/data/com.termux/files/usr/include/bits/flock.h" 1 3 4
# 60 "/data/data/com.termux/files/usr/include/bits/flock.h" 3 4
struct flock { short l_type; short l_whence; off64_t l_start; off64_t l_len; pid_t l_pid; };
struct flock64 { short l_type; short l_whence; off64_t l_start; off64_t l_len; pid_t l_pid; };
# 23 "/data/data/com.termux/files/usr/include/asm-generic/fcntl.h" 2 3 4
# 123 "/data/data/com.termux/files/usr/include/asm-generic/fcntl.h" 3 4
struct f_owner_ex {
  int type;
  __kernel_pid_t pid;
};
# 26 "/data/data/com.termux/files/usr/include/aarch64-linux-android/asm/fcntl.h" 2 3 4
# 48 "/data/data/com.termux/files/usr/include/stdio.h" 2 3 4

# 1 "/data/data/com.termux/files/usr/include/bits/seek_constants.h" 1 3 4
# 50 "/data/data/com.termux/files/usr/include/stdio.h" 2 3 4







typedef off_t fpos_t;
typedef off64_t fpos64_t;

struct __sFILE;
typedef struct __sFILE FILE;


extern FILE* _Nonnull stdin __attribute__((__availability__(android,strict,introduced=23)));
extern FILE* _Nonnull stdout __attribute__((__availability__(android,strict,introduced=23)));
extern FILE* _Nonnull stderr __attribute__((__availability__(android,strict,introduced=23)));
# 108 "/data/data/com.termux/files/usr/include/stdio.h" 3 4
void clearerr(FILE* _Nonnull __fp);
int fclose(FILE* _Nonnull __fp);
int feof(FILE* _Nonnull __fp);
int ferror(FILE* _Nonnull __fp);
int fflush(FILE* _Nullable __fp);
int fgetc(FILE* _Nonnull __fp);
char* _Nullable fgets(char* _Nonnull __buf, int __size, FILE* _Nonnull __fp);
int fprintf(FILE* _Nonnull __fp , const char* _Nonnull __fmt, ...) __attribute__((__format__(printf, 2, 3)));
int fputc(int __ch, FILE* _Nonnull __fp);
int fputs(const char* _Nonnull __s, FILE* _Nonnull __fp);
size_t fread(void* _Nonnull __buf, size_t __size, size_t __count, FILE* _Nonnull __fp);
int fscanf(FILE* _Nonnull __fp, const char* _Nonnull __fmt, ...) __attribute__((__format__(scanf, 2, 3)));
size_t fwrite(const void* _Nonnull __buf, size_t __size, size_t __count, FILE* _Nonnull __fp);
int getc(FILE* _Nonnull __fp);
int getchar(void);


ssize_t getdelim(char* _Nullable * _Nonnull __line_ptr, size_t* _Nonnull __line_length_ptr, int __delimiter, FILE* _Nonnull __fp) __attribute__((__availability__(android,strict,introduced=18)));
ssize_t getline(char* _Nullable * _Nonnull __line_ptr, size_t* _Nonnull __line_length_ptr, FILE* _Nonnull __fp) __attribute__((__availability__(android,strict,introduced=18)));



void perror(const char* _Nullable __msg);
int printf(const char* _Nonnull __fmt, ...) __attribute__((__format__(printf, 1, 2)));
int putc(int __ch, FILE* _Nonnull __fp);
int putchar(int __ch);
int puts(const char* _Nonnull __s);
int remove(const char* _Nonnull __path);
void rewind(FILE* _Nonnull __fp);
int scanf(const char* _Nonnull __fmt, ...) __attribute__((__format__(scanf, 1, 2)));
void setbuf(FILE* _Nonnull __fp, char* _Nullable __buf);
int setvbuf(FILE* _Nonnull __fp, char* _Nullable __buf, int __mode, size_t __size);
int sscanf(const char* _Nonnull __s, const char* _Nonnull __fmt, ...) __attribute__((__format__(scanf, 2, 3)));
int ungetc(int __ch, FILE* _Nonnull __fp);
int vfprintf(FILE* _Nonnull __fp, const char* _Nonnull __fmt, va_list __args) __attribute__((__format__(printf, 2, 0)));
int vprintf(const char* _Nonnull __fp, va_list __args) __attribute__((__format__(printf, 1, 0)));



int dprintf(int __fd, const char* _Nonnull __fmt, ...) __attribute__((__format__(printf, 2, 3))) __attribute__((__availability__(android,strict,introduced=21)));
int vdprintf(int __fd, const char* _Nonnull __fmt, va_list __args) __attribute__((__format__(printf, 2, 0))) __attribute__((__availability__(android,strict,introduced=21)));







int sprintf(char* _Null_unspecified __s, const char* _Nonnull __fmt, ...)
    __attribute__((__format__(printf, 2, 3))) ;
int vsprintf(char* _Null_unspecified __s, const char* _Nonnull __fmt, va_list __args)
    __attribute__((__format__(printf, 2, 0))) ;
char* _Nullable tmpnam(char* _Nullable __s)
    __attribute__((deprecated("tmpnam is unsafe, use mkstemp or tmpfile instead")));

char* _Nullable tempnam(const char* _Nullable __dir, const char* _Nullable __prefix)
    __attribute__((deprecated("tempnam is unsafe, use mkstemp or tmpfile instead")));







int rename(const char* _Nonnull __old_path, const char* _Nonnull __new_path);







int renameat(int __old_dir_fd, const char* _Nonnull __old_path, int __new_dir_fd, const char* _Nonnull __new_path);
# 217 "/data/data/com.termux/files/usr/include/stdio.h" 3 4
int fseek(FILE* _Nonnull __fp, long __offset, int __whence);
long ftell(FILE* _Nonnull __fp);
# 243 "/data/data/com.termux/files/usr/include/stdio.h" 3 4
int fgetpos(FILE* _Nonnull __fp, fpos_t* _Nonnull __pos);
int fsetpos(FILE* _Nonnull __fp, const fpos_t* _Nonnull __pos);
int fseeko(FILE* _Nonnull __fp, off_t __offset, int __whence);
off_t ftello(FILE* _Nonnull __fp);
# 258 "/data/data/com.termux/files/usr/include/stdio.h" 3 4
int fgetpos64(FILE* _Nonnull __fp, fpos64_t* _Nonnull __pos) __attribute__((__availability__(android,strict,introduced=24)));
int fsetpos64(FILE* _Nonnull __fp, const fpos64_t* _Nonnull __pos) __attribute__((__availability__(android,strict,introduced=24)));
int fseeko64(FILE* _Nonnull __fp, off64_t __offset, int __whence) __attribute__((__availability__(android,strict,introduced=24)));
off64_t ftello64(FILE* _Nonnull __fp) __attribute__((__availability__(android,strict,introduced=24)));
# 277 "/data/data/com.termux/files/usr/include/stdio.h" 3 4
FILE* _Nullable fopen(const char* _Nonnull __path, const char* _Nonnull __mode);


FILE* _Nullable fopen64(const char* _Nonnull __path, const char* _Nonnull __mode) __attribute__((__availability__(android,strict,introduced=24)));


FILE* _Nullable freopen(const char* _Nullable __path, const char* _Nonnull __mode, FILE* _Nonnull __fp);


FILE* _Nullable freopen64(const char* _Nullable __path, const char* _Nonnull __mode, FILE* _Nonnull __fp) __attribute__((__availability__(android,strict,introduced=24)));



FILE* _Nullable tmpfile64(void) __attribute__((__availability__(android,strict,introduced=24)));



int snprintf(char* _Null_unspecified __buf, size_t __size, const char* _Nonnull __fmt, ...) __attribute__((__format__(printf, 3, 4)));
int vfscanf(FILE* _Nonnull __fp, const char* _Nonnull __fmt, va_list __args) __attribute__((__format__(scanf, 2, 0)));
int vscanf(const char* _Nonnull __fmt , va_list __args) __attribute__((__format__(scanf, 1, 0)));
int vsnprintf(char* _Null_unspecified __buf, size_t __size, const char* _Nonnull __fmt, va_list __args) __attribute__((__format__(printf, 3, 0)));
int vsscanf(const char* _Nonnull __s, const char* _Nonnull __fmt, va_list __args) __attribute__((__format__(scanf, 2, 0)));




char* _Nonnull ctermid(char* _Nullable __buf) __attribute__((__availability__(android,strict,introduced=26)));



FILE* _Nullable fdopen(int __fd, const char* _Nonnull __mode);
int fileno(FILE* _Nonnull __fp);
int pclose(FILE* _Nonnull __fp);
FILE* _Nullable popen(const char* _Nonnull __command, const char* _Nonnull __mode);
void flockfile(FILE* _Nonnull __fp);
int ftrylockfile(FILE* _Nonnull __fp);
void funlockfile(FILE* _Nonnull __fp);
int getc_unlocked(FILE* _Nonnull __fp);
int getchar_unlocked(void);
int putc_unlocked(int __ch, FILE* _Nonnull __fp);
int putchar_unlocked(int __ch);



FILE* _Nullable fmemopen(void* _Nullable __buf, size_t __size, const char* _Nonnull __mode) __attribute__((__availability__(android,strict,introduced=23)));
FILE* _Nullable open_memstream(char* _Nonnull * _Nonnull __ptr, size_t* _Nonnull __size_ptr) __attribute__((__availability__(android,strict,introduced=23)));




int asprintf(char* _Nullable * _Nonnull __s_ptr, const char* _Nonnull __fmt, ...) __attribute__((__format__(printf, 2, 3)));
char* _Nullable fgetln(FILE* _Nonnull __fp, size_t* _Nonnull __length_ptr);
int fpurge(FILE* _Nonnull __fp);
void setbuffer(FILE* _Nonnull __fp, char* _Nullable __buf, int __size);
int setlinebuf(FILE* _Nonnull __fp);
int vasprintf(char* _Nullable * _Nonnull __s_ptr, const char* _Nonnull __fmt, va_list __args) __attribute__((__format__(printf, 2, 0)));


void clearerr_unlocked(FILE* _Nonnull __fp) __attribute__((__availability__(android,strict,introduced=23)));
int feof_unlocked(FILE* _Nonnull __fp) __attribute__((__availability__(android,strict,introduced=23)));
int ferror_unlocked(FILE* _Nonnull __fp) __attribute__((__availability__(android,strict,introduced=23)));




int fileno_unlocked(FILE* _Nonnull __fp) __attribute__((__availability__(android,strict,introduced=24)));
# 374 "/data/data/com.termux/files/usr/include/stdio.h" 3 4
int open(const char*, int, ...);
extern pid_t getpid();
extern int unlink(const char*);
void free(void* p);
uint32_t arc4random(void);
static __inline__ FILE* _Nullable tmpfile() {
 int p = getpid();
 char* path;
 int i;
 for (i = 0; i < 100; i++) {
  unsigned int r = arc4random();
  if (asprintf(&path, "/data/data/com.termux/files/usr/tmp/tmpfile.%d-%u", p, r) == -1) return ((void*)0);
  int fd = open(path, 00000002 | 00000100 | 00000200 | 0400000, 0600);
  if (fd >= 0) {
   FILE* result = fdopen(fd, "w+");
   unlink(path);
   free(path);
   return result;
  }
  free(path);
 }
 return ((void*)0);
}
# 5 "./test.h" 2
# 2 "array.c" 2
# 1 "./../headers/Array.h" 1



# 1 "/data/data/com.termux/files/usr/include/string.h" 1 3 4
# 33 "/data/data/com.termux/files/usr/include/string.h" 3 4
# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/stddef.h" 1 3 4
# 34 "/data/data/com.termux/files/usr/include/string.h" 2 3 4
# 1 "/data/data/com.termux/files/usr/include/xlocale.h" 1 3 4
# 44 "/data/data/com.termux/files/usr/include/xlocale.h" 3 4
struct __locale_t;




typedef struct __locale_t* locale_t;
# 35 "/data/data/com.termux/files/usr/include/string.h" 2 3 4

# 1 "/data/data/com.termux/files/usr/include/bits/strcasecmp.h" 1 3 4
# 49 "/data/data/com.termux/files/usr/include/bits/strcasecmp.h" 3 4
int strcasecmp(const char* _Nonnull __s1, const char* _Nonnull __s2) __attribute__((__pure__));






int strcasecmp_l(const char* _Nonnull __s1, const char* _Nonnull __s2, locale_t _Nonnull __l) __attribute__((__pure__)) __attribute__((__availability__(android,strict,introduced=23)));
# 68 "/data/data/com.termux/files/usr/include/bits/strcasecmp.h" 3 4
int strncasecmp(const char* _Nonnull __s1, const char* _Nonnull __s2, size_t __n) __attribute__((__pure__));






int strncasecmp_l(const char* _Nonnull __s1, const char* _Nonnull __s2, size_t __n, locale_t _Nonnull __l) __attribute__((__pure__)) __attribute__((__availability__(android,strict,introduced=23)));
# 37 "/data/data/com.termux/files/usr/include/string.h" 2 3 4







void* _Nullable memccpy(void* _Nonnull __dst, const void* _Nonnull __src, int __stop_char, size_t __n);
void* _Nullable memchr(const void* _Nonnull __s, int __ch, size_t __n) __attribute__((__pure__));




void* _Nullable memrchr(const void* _Nonnull __s, int __ch, size_t __n) __attribute__((__pure__));

int memcmp(const void* _Nonnull __lhs, const void* _Nonnull __rhs, size_t __n) __attribute__((__pure__));
void* _Nonnull memcpy(void* _Nonnull, const void* _Nonnull, size_t);







void* _Nonnull memmove(void* _Nonnull __dst, const void* _Nonnull __src, size_t __n);







void* _Nonnull memset(void* _Nonnull __dst, int __ch, size_t __n);
# 84 "/data/data/com.termux/files/usr/include/string.h" 3 4
void* _Nullable memmem(const void* _Nonnull __haystack, size_t __haystack_size, const void* _Nonnull __needle, size_t __needle_size) __attribute__((__pure__));

char* _Nullable strchr(const char* _Nonnull __s, int __ch) __attribute__((__pure__));


char* _Nullable __strchr_chk(const char* _Nonnull __s, int __ch, size_t __n) __attribute__((__availability__(android,strict,introduced=18)));
# 109 "/data/data/com.termux/files/usr/include/string.h" 3 4
char* _Nullable strrchr(const char* _Nonnull __s, int __ch) __attribute__((__pure__));


char* _Nullable __strrchr_chk(const char* _Nonnull __s, int __ch, size_t __n) __attribute__((__availability__(android,strict,introduced=18)));



size_t strlen(const char* _Nonnull __s) __attribute__((__pure__));


size_t __strlen_chk(const char* _Nonnull __s, size_t __n) __attribute__((__availability__(android,strict,introduced=17)));



int strcmp(const char* _Nonnull __lhs, const char* _Nonnull __rhs) __attribute__((__pure__));


char* _Nonnull stpcpy(char* _Nonnull __dst, const char* _Nonnull __src) __attribute__((__availability__(android,strict,introduced=21)));


char* _Nonnull strcpy(char* _Nonnull __dst, const char* _Nonnull __src);
char* _Nonnull strcat(char* _Nonnull __dst, const char* _Nonnull __src);
char* _Nullable strdup(const char* _Nonnull __s);

char* _Nullable strstr(const char* _Nonnull __haystack, const char* _Nonnull __needle) __attribute__((__pure__));




char* _Nullable strcasestr(const char* _Nonnull __haystack, const char* _Nonnull __needle) __attribute__((__pure__));

char* _Nullable strtok(char* _Nullable __s, const char* _Nonnull __delimiter);
char* _Nullable strtok_r(char* _Nullable __s, const char* _Nonnull __delimiter, char* _Nonnull * _Nonnull __pos_ptr);

char* _Nonnull strerror(int __errno_value);


char* _Nonnull strerror_l(int __errno_value, locale_t _Nonnull __l) __attribute__((__availability__(android,strict,introduced=23)));





int strerror_r(int __errno_value, char* _Nonnull __buf, size_t __n);


size_t strnlen(const char* _Nonnull __s, size_t __n) __attribute__((__pure__));
char* _Nonnull strncat(char* _Nonnull __dst, const char* _Nonnull __src, size_t __n);
char* _Nullable strndup(const char* _Nonnull __s, size_t __n);
int strncmp(const char* _Nonnull __lhs, const char* _Nonnull __rhs, size_t __n) __attribute__((__pure__));


char* _Nonnull stpncpy(char* _Nonnull __dst, const char* _Nonnull __src, size_t __n) __attribute__((__availability__(android,strict,introduced=21)));


char* _Nonnull strncpy(char* _Nonnull __dst, const char* _Nonnull __src, size_t __n);

size_t strlcat(char* _Nonnull __dst, const char* _Nonnull __src, size_t __n);
size_t strlcpy(char* _Nonnull __dst, const char* _Nonnull __src, size_t __n);

size_t strcspn(const char* _Nonnull __s, const char* _Nonnull __reject) __attribute__((__pure__));
char* _Nullable strpbrk(const char* _Nonnull __s, const char* _Nonnull __accept) __attribute__((__pure__));
char* _Nullable strsep(char* _Nullable * _Nonnull __s_ptr, const char* _Nonnull __delimiter);
size_t strspn(const char* _Nonnull __s, const char* _Nonnull __accept);

char* _Nonnull strsignal(int __signal);

int strcoll(const char* _Nonnull __lhs, const char* _Nonnull __rhs) __attribute__((__pure__));
size_t strxfrm(char* _Null_unspecified __dst, const char* _Nonnull __src, size_t __n);



int strcoll_l(const char* _Nonnull __lhs, const char* _Nonnull __rhs, locale_t _Nonnull __l) __attribute__((__pure__)) __attribute__((__availability__(android,strict,introduced=21)));
size_t strxfrm_l(char* _Null_unspecified __dst, const char* _Nonnull __src, size_t __n, locale_t _Nonnull __l) __attribute__((__availability__(android,strict,introduced=21)));
# 5 "./../headers/Array.h" 2
# 1 "./../headers/Common.h" 1



# 1 "/data/data/com.termux/files/usr/include/stdlib.h" 1 3 4
# 32 "/data/data/com.termux/files/usr/include/stdlib.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/alloca.h" 1 3 4
# 33 "/data/data/com.termux/files/usr/include/stdlib.h" 2 3 4
# 1 "/data/data/com.termux/files/usr/include/bits/wait.h" 1 3 4
# 38 "/data/data/com.termux/files/usr/include/bits/wait.h" 3 4
# 1 "/data/data/com.termux/files/usr/include/linux/wait.h" 1 3 4
# 39 "/data/data/com.termux/files/usr/include/bits/wait.h" 2 3 4
# 34 "/data/data/com.termux/files/usr/include/stdlib.h" 2 3 4
# 1 "/data/data/com.termux/files/usr/include/malloc.h" 1 3 4
# 29 "/data/data/com.termux/files/usr/include/malloc.h" 3 4
# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/stddef.h" 1 3 4
# 30 "/data/data/com.termux/files/usr/include/malloc.h" 2 3 4
# 43 "/data/data/com.termux/files/usr/include/malloc.h" 3 4
void* _Nullable malloc(size_t __byte_count) __attribute__((__malloc__)) __attribute__((__alloc_size__(1))) __attribute__((__warn_unused_result__));
# 52 "/data/data/com.termux/files/usr/include/malloc.h" 3 4
void* _Nullable calloc(size_t __item_count, size_t __item_size) __attribute__((__malloc__)) __attribute__((__alloc_size__(1,2))) __attribute__((__warn_unused_result__));
# 61 "/data/data/com.termux/files/usr/include/malloc.h" 3 4
void* _Nullable realloc(void* _Nullable __ptr, size_t __byte_count) __attribute__((__alloc_size__(2))) __attribute__((__warn_unused_result__));
# 83 "/data/data/com.termux/files/usr/include/malloc.h" 3 4
void free(void* _Nullable __ptr);
# 94 "/data/data/com.termux/files/usr/include/malloc.h" 3 4
void* _Nullable memalign(size_t __alignment, size_t __byte_count) __attribute__((__malloc__)) __attribute__((__alloc_size__(2))) __attribute__((__warn_unused_result__));
# 104 "/data/data/com.termux/files/usr/include/malloc.h" 3 4
size_t malloc_usable_size(const void* _Nullable __ptr) __attribute__((__availability__(android,strict,introduced=17)));
# 132 "/data/data/com.termux/files/usr/include/malloc.h" 3 4
struct mallinfo { size_t arena; size_t ordblks; size_t smblks; size_t hblks; size_t hblkhd; size_t usmblks; size_t fsmblks; size_t uordblks; size_t fordblks; size_t keepcost; };







struct mallinfo mallinfo(void);




struct mallinfo2 { size_t arena; size_t ordblks; size_t smblks; size_t hblks; size_t hblkhd; size_t usmblks; size_t fsmblks; size_t uordblks; size_t fordblks; size_t keepcost; };






struct mallinfo2 mallinfo2(void) __asm__("mallinfo");
# 181 "/data/data/com.termux/files/usr/include/malloc.h" 3 4
int malloc_info(int __must_be_zero, FILE* _Nonnull __fp) __attribute__((__availability__(android,strict,introduced=23)));
# 306 "/data/data/com.termux/files/usr/include/malloc.h" 3 4
enum HeapTaggingLevel {




  M_HEAP_TAGGING_LEVEL_NONE = 0,






  M_HEAP_TAGGING_LEVEL_TBI = 1,





  M_HEAP_TAGGING_LEVEL_ASYNC = 2,





  M_HEAP_TAGGING_LEVEL_SYNC = 3,

};
# 344 "/data/data/com.termux/files/usr/include/malloc.h" 3 4
int mallopt(int __option, int __value) __attribute__((__availability__(android,strict,introduced=26)));
# 359 "/data/data/com.termux/files/usr/include/malloc.h" 3 4
extern void* _Nonnull (*volatile _Nonnull __malloc_hook)(size_t __byte_count, const void* _Nonnull __caller) __attribute__((__availability__(android,strict,introduced=28)));
# 370 "/data/data/com.termux/files/usr/include/malloc.h" 3 4
extern void* _Nonnull (*volatile _Nonnull __realloc_hook)(void* _Nullable __ptr, size_t __byte_count, const void* _Nonnull __caller) __attribute__((__availability__(android,strict,introduced=28)));
# 381 "/data/data/com.termux/files/usr/include/malloc.h" 3 4
extern void (*volatile _Nonnull __free_hook)(void* _Nullable __ptr, const void* _Nonnull __caller) __attribute__((__availability__(android,strict,introduced=28)));
# 392 "/data/data/com.termux/files/usr/include/malloc.h" 3 4
extern void* _Nonnull (*volatile _Nonnull __memalign_hook)(size_t __alignment, size_t __byte_count, const void* _Nonnull __caller) __attribute__((__availability__(android,strict,introduced=28)));
# 35 "/data/data/com.termux/files/usr/include/stdlib.h" 2 3 4
# 1 "/data/data/com.termux/files/usr/lib/clang/18/include/stddef.h" 1 3 4
# 36 "/data/data/com.termux/files/usr/include/stdlib.h" 2 3 4
# 45 "/data/data/com.termux/files/usr/include/stdlib.h" 3 4
__attribute__((__noreturn__)) void abort(void) __attribute__((__nomerge__));
__attribute__((__noreturn__)) void exit(int __status);


__attribute__((__noreturn__)) void _Exit(int __status) __attribute__((__availability__(android,strict,introduced=21)));



int atexit(void (* _Nonnull __fn)(void));



int at_quick_exit(void (* _Nonnull __fn)(void)) __attribute__((__availability__(android,strict,introduced=21)));
void quick_exit(int __status) __attribute__((__noreturn__)) __attribute__((__availability__(android,strict,introduced=21)));



char* _Nullable getenv(const char* _Nonnull __name);
int putenv(char* _Nonnull __assignment);
int setenv(const char* _Nonnull __name, const char* _Nonnull __value, int __overwrite);
int unsetenv(const char* _Nonnull __name);
int clearenv(void);

char* _Nullable mkdtemp(char* _Nonnull __template);
char* _Nullable mktemp(char* _Nonnull __template) __attribute__((deprecated("mktemp is unsafe, use mkstemp or tmpfile instead")));



int mkostemp64(char* _Nonnull __template, int __flags) __attribute__((__availability__(android,strict,introduced=23)));
int mkostemp(char* _Nonnull __template, int __flags) __attribute__((__availability__(android,strict,introduced=23)));
int mkostemps64(char* _Nonnull __template, int __suffix_length, int __flags) __attribute__((__availability__(android,strict,introduced=23)));
int mkostemps(char* _Nonnull __template, int __suffix_length, int __flags) __attribute__((__availability__(android,strict,introduced=23)));




int mkstemp64(char* _Nonnull __template) __attribute__((__availability__(android,strict,introduced=21)));


int mkstemp(char* _Nonnull __template);


int mkstemps64(char* _Nonnull __template, int __flags) __attribute__((__availability__(android,strict,introduced=23)));


int mkstemps(char* _Nonnull __template, int __flags);

long strtol(const char* _Nonnull __s, char* _Nullable * _Nullable __end_ptr, int __base);
long long strtoll(const char* _Nonnull __s, char* _Nullable * _Nullable __end_ptr, int __base);
unsigned long strtoul(const char* _Nonnull __s, char* _Nullable * _Nullable __end_ptr, int __base);
unsigned long long strtoull(const char* _Nonnull __s, char* _Nullable * _Nullable __end_ptr, int __base);



int posix_memalign(void* _Nullable * _Nullable __memptr, size_t __alignment, size_t __size) __attribute__((__availability__(android,strict,introduced=17)));





void* _Nullable aligned_alloc(size_t __alignment, size_t __size) __attribute__((__availability__(android,strict,introduced=28)));



double strtod(const char* _Nonnull __s, char* _Nullable * _Nullable __end_ptr);
long double strtold(const char* _Nonnull __s, char* _Nullable * _Nullable __end_ptr) __attribute__((__availability__(android,strict,introduced=21)));



unsigned long strtoul_l(const char* _Nonnull __s, char* _Nullable * _Nullable __end_ptr, int __base, locale_t _Nonnull __l) __attribute__((__availability__(android,strict,introduced=26)));



int atoi(const char* _Nonnull __s) __attribute__((__pure__));
long atol(const char* _Nonnull __s) __attribute__((__pure__));
long long atoll(const char* _Nonnull __s) __attribute__((__pure__));

__attribute__((__warn_unused_result__)) char* _Nullable realpath(const char* _Nonnull __path, char* _Nullable __resolved);
int system(const char* _Nonnull __command);

void* _Nullable bsearch(const void* _Nonnull __key, const void* _Nullable __base, size_t __nmemb, size_t __size, int (* _Nonnull __comparator)(const void* _Nonnull __lhs, const void* _Nonnull __rhs));

void qsort(void* _Nullable __base, size_t __nmemb, size_t __size, int (* _Nonnull __comparator)(const void* _Nullable __lhs, const void* _Nullable __rhs));

uint32_t arc4random(void);
uint32_t arc4random_uniform(uint32_t __upper_bound);
void arc4random_buf(void* _Nonnull __buf, size_t __n);





int rand_r(unsigned int* _Nonnull __seed_ptr) __attribute__((__availability__(android,strict,introduced=21)));



double drand48(void);
double erand48(unsigned short __xsubi[_Nonnull 3]);
long jrand48(unsigned short __xsubi[_Nonnull 3]);


void lcong48(unsigned short __param[_Nonnull 7]) __attribute__((__availability__(android,strict,introduced=23)));


long lrand48(void);
long mrand48(void);
long nrand48(unsigned short __xsubi[_Nonnull 3]);
unsigned short* _Nonnull seed48(unsigned short __seed16v[_Nonnull 3]);
void srand48(long __seed);



char* _Nullable initstate(unsigned int __seed, char* _Nonnull __state, size_t __n) __attribute__((__availability__(android,strict,introduced=21)));
char* _Nullable setstate(char* _Nonnull __state) __attribute__((__availability__(android,strict,introduced=21)));



int getpt(void);


int posix_openpt(int __flags) __attribute__((__availability__(android,strict,introduced=21)));


char* _Nullable ptsname(int __fd);
int ptsname_r(int __fd, char* _Nonnull __buf, size_t __n);
int unlockpt(int __fd);



int getsubopt(char* _Nonnull * _Nonnull __option, char* _Nonnull const* _Nonnull __tokens, char* _Nullable * _Nonnull __value_ptr) __attribute__((__availability__(android,strict,introduced=26)));



typedef struct {
  int quot;
  int rem;
} div_t;

div_t div(int __numerator, int __denominator) __attribute__((__const__));

typedef struct {
  long int quot;
  long int rem;
} ldiv_t;

ldiv_t ldiv(long __numerator, long __denominator) __attribute__((__const__));

typedef struct {
  long long int quot;
  long long int rem;
} lldiv_t;

lldiv_t lldiv(long long __numerator, long long __denominator) __attribute__((__const__));
# 215 "/data/data/com.termux/files/usr/include/stdlib.h" 3 4
const char* _Nullable getprogname(void) __attribute__((__availability__(android,strict,introduced=21)));
void setprogname(const char* _Nonnull __name) __attribute__((__availability__(android,strict,introduced=21)));



int mblen(const char* _Nullable __s, size_t __n) ;
size_t mbstowcs(wchar_t* _Nullable __dst, const char* _Nullable __src, size_t __n) ;
int mbtowc(wchar_t* _Nullable __wc_ptr, const char* _Nullable __s, size_t __n) ;
int wctomb(char* _Nullable __dst, wchar_t __wc) ;

size_t wcstombs(char* _Nullable __dst, const wchar_t* _Nullable __src, size_t __n) ;
# 236 "/data/data/com.termux/files/usr/include/stdlib.h" 3 4
int abs(int __x) __attribute__((__const__)) __attribute__((__availability__(android,strict,introduced=19)));
long labs(long __x) __attribute__((__const__)) __attribute__((__availability__(android,strict,introduced=19)));
long long llabs(long long __x) __attribute__((__const__)) __attribute__((__availability__(android,strict,introduced=19)));





float strtof(const char* _Nonnull __s, char* _Nullable * _Nullable __end_ptr) __attribute__((__availability__(android,strict,introduced=21)));
double atof(const char* _Nonnull __s) __attribute__((__pure__)) __attribute__((__availability__(android,strict,introduced=21)));
int rand(void) __attribute__((__availability__(android,strict,introduced=21)));
void srand(unsigned int __seed) __attribute__((__availability__(android,strict,introduced=21)));
long random(void) __attribute__((__availability__(android,strict,introduced=21)));
void srandom(unsigned int __seed) __attribute__((__availability__(android,strict,introduced=21)));
int grantpt(int __fd) __attribute__((__availability__(android,strict,introduced=21)));

long long strtoll_l(const char* _Nonnull __s, char* _Nullable * _Nullable __end_ptr, int __base, locale_t _Nonnull __l) __attribute__((__availability__(android,strict,introduced=21)));
unsigned long long strtoull_l(const char* _Nonnull __s, char* _Nullable * _Nullable __end_ptr, int __base, locale_t _Nonnull __l) __attribute__((__availability__(android,strict,introduced=21)));
long double strtold_l(const char* _Nonnull __s, char* _Nullable * _Nullable __end_ptr, locale_t _Nonnull __l) __attribute__((__availability__(android,strict,introduced=21)));




double strtod_l(const char* _Nonnull __s, char* _Nullable * _Nullable __end_ptr, locale_t _Nonnull __l) __attribute__((__availability__(android,strict,introduced=26)));
float strtof_l(const char* _Nonnull __s, char* _Nullable * _Nullable __end_ptr, locale_t _Nonnull __l) __attribute__((__availability__(android,strict,introduced=26)));
long strtol_l(const char* _Nonnull __s, char* _Nullable * _Nullable __end_ptr, int, locale_t _Nonnull __l) __attribute__((__availability__(android,strict,introduced=26)));






# 1 "/data/data/com.termux/files/usr/include/android/legacy_stdlib_inlines.h" 1 3 4
# 269 "/data/data/com.termux/files/usr/include/stdlib.h" 2 3 4
# 5 "./../headers/Common.h" 2
# 6 "./../headers/Array.h" 2
# 3 "array.c" 2






                                ;

__attribute__((constructor)) static void make(void)
{
 struct CET_Array_int_3 { const size_t size; int data[3]; } arr1 = { .size = (sizeof((int[]){1, 2, 3}) / sizeof(int)), .data = {1, 2, 3} };

 int arr2[3] = {1, 2, 3};

 do { if ((memcmp(arr1.data, arr2, 3)) == (0)) printf("\033[32mPASS\033[0m: %s: %s\n", "array.c", __func__); else printf("\033[31mFAIL\033[0m: %s: %s: expected %ld but got %ld\n", "array.c", __func__, (long)(0), (long)(memcmp(arr1.data, arr2, 3))); } while (0);
}

__attribute__((constructor)) static void to_array(void)
{
 int arr2[3] = {1, 2, 3};

 struct CET_Array_int_3 { const size_t size; int data[3]; } arr1 = ({ struct CET_Array_int_3 { const size_t size; int data[3]; } tmp = {.size = 3}; memcpy(tmp.data, (arr2), sizeof(int) * 3); tmp; });

 do { if ((memcmp(arr1.data, arr2, 3)) == (0)) printf("\033[32mPASS\033[0m: %s: %s\n", "array.c", __func__); else printf("\033[31mFAIL\033[0m: %s: %s: expected %ld but got %ld\n", "array.c", __func__, (long)(0), (long)(memcmp(arr1.data, arr2, 3))); } while (0);
}

__attribute__((constructor)) static void at(void)
{
 int arr2[3] = {1, 2, 3};

 struct CET_Array_int_3 { const size_t size; int data[3]; } arr1 = { .size = (sizeof((int[]){1, 2, 3}) / sizeof(int)), .data = {1, 2, 3} };

 do { if ((({ ((!(((size_t)(3 / 3)) < 0 || ((size_t)(3 / 3)) >= (arr1).size))) ? (void)0 : (fprintf(stderr, "%s, file: %s, line: %d\n", "CET_Array_at: index out of bounds", "array.c", 36), exit(1)); (arr1).data[(size_t)(3 / 3)]; })) == (arr2[(size_t)(3 / 3)])) printf("\033[32mPASS\033[0m: %s: %s\n", "array.c", __func__); else printf("\033[31mFAIL\033[0m: %s: %s: expected %ld but got %ld\n", "array.c", __func__, (long)(arr2[(size_t)(3 / 3)]), (long)(({ ((!(((size_t)(3 / 3)) < 0 || ((size_t)(3 / 3)) >= (arr1).size))) ? (void)0 : (fprintf(stderr, "%s, file: %s, line: %d\n", "CET_Array_at: index out of bounds", "array.c", 36), exit(1)); (arr1).data[(size_t)(3 / 3)]; }))); } while (0);



}

__attribute__((constructor)) static void front(void)
{
 int arr2[3] = {1, 2, 3};

 struct CET_Array_int_3 { const size_t size; int data[3]; } arr1 = { .size = (sizeof((int[]){1, 2, 3}) / sizeof(int)), .data = {1, 2, 3} };

 do { if ((({ ((!((0) < 0 || (0) >= (arr1).size))) ? (void)0 : (fprintf(stderr, "%s, file: %s, line: %d\n", "CET_Array_at: index out of bounds", "array.c", 47), exit(1)); (arr1).data[0]; })) == (arr2[0])) printf("\033[32mPASS\033[0m: %s: %s\n", "array.c", __func__); else printf("\033[31mFAIL\033[0m: %s: %s: expected %ld but got %ld\n", "array.c", __func__, (long)(arr2[0]), (long)(({ ((!((0) < 0 || (0) >= (arr1).size))) ? (void)0 : (fprintf(stderr, "%s, file: %s, line: %d\n", "CET_Array_at: index out of bounds", "array.c", 47), exit(1)); (arr1).data[0]; }))); } while (0);
}

__attribute__((constructor)) static void back(void)
{
 int arr2[3] = {1, 2, 3};

 struct CET_Array_int_3 { const size_t size; int data[3]; } arr1 = { .size = (sizeof((int[]){1, 2, 3}) / sizeof(int)), .data = {1, 2, 3} };

 do { if ((({ ((!(((arr1).size - 1) < 0 || ((arr1).size - 1) >= (arr1).size))) ? (void)0 : (fprintf(stderr, "%s, file: %s, line: %d\n", "CET_Array_at: index out of bounds", "array.c", 56), exit(1)); (arr1).data[(arr1).size - 1]; })) == (arr2[3 - 1])) printf("\033[32mPASS\033[0m: %s: %s\n", "array.c", __func__); else printf("\033[31mFAIL\033[0m: %s: %s: expected %ld but got %ld\n", "array.c", __func__, (long)(arr2[3 - 1]), (long)(({ ((!(((arr1).size - 1) < 0 || ((arr1).size - 1) >= (arr1).size))) ? (void)0 : (fprintf(stderr, "%s, file: %s, line: %d\n", "CET_Array_at: index out of bounds", "array.c", 56), exit(1)); (arr1).data[(arr1).size - 1]; }))); } while (0);
}

__attribute__((constructor)) static void fill(void)
{
 int arr2[3] = {0};
 for (size_t i = 0; i < 3; i++)
  arr2[i] = 1;

 struct CET_Array_int_3 { const size_t size; int data[3]; } arr1 = { .size = 3, .data = {0} };
 do { ((!(sizeof(1) > sizeof(*(arr1).data)))) ? (void)0 : (fprintf(stderr, "%s, file: %s, line: %d\n", "CET_Array_fill: index out of bounds", "array.c", 66), exit(1)); for (register size_t i = 0; i < (arr1).size; i++) (arr1).data[i] = 1; } while (0);

 do { if ((memcmp(arr1.data, arr2, 3)) == (0)) printf("\033[32mPASS\033[0m: %s: %s\n", "array.c", __func__); else printf("\033[31mFAIL\033[0m: %s: %s: expected %ld but got %ld\n", "array.c", __func__, (long)(0), (long)(memcmp(arr1.data, arr2, 3))); } while (0);
}

int main(void)
{
 return 0;
}
