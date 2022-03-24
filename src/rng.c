typedef signed char           s8;
typedef signed short          s16;
typedef signed int            s32;
typedef signed long long      s64;
typedef unsigned char         u8; // BYTE = unsigned 8 bit value
typedef unsigned short        u16; // WORD = unsigned 16 bit value
typedef unsigned int          u32; // DWORD = unsigned 32 bit value
typedef unsigned long long    u64;
typedef float                 f32;
typedef double                f64;

extern u32 D_800f6884;

u32 func_80055bd8(void) {
    u32 y, z;
    y = D_800f6884 * 4 + 2;
    z = y + 1;
    y = y * z;
    return D_800f6884 = y / 4;
}