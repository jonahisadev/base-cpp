#pragma once

// Includes
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <cstdint>

// Macros
#define str(x) #x
#define panic(str, ...) fprintf(stderr, str, ##__VA_ARGS__); exit(1)
#define assert(x) if (!(x)) panic("ASSERT FAIL: %s (%s:%d)\n", str(x), __FILE__, __LINE__)
#define cast(x) (x)

// Signed integers
typedef int8_t i8;
typedef int16_t i16;
typedef int32_t i32;
typedef int64_t i64;

// Unsigned integers
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

// Floating point
typedef float f32;
typedef double f64;

// String
typedef const char* string;