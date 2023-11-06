// This file is generated by PhobosCompiler v0.0.1

#include <malloc.h>
#include <stdint.h>
#include <string.h>

typedef uint8_t Phobos_Bool;
typedef uint8_t Phobos_Byte;
typedef int8_t Phobos_Int8;
typedef int16_t Phobos_Int16;
typedef int32_t Phobos_Int32;
typedef int64_t Phobos_Int64;
typedef uint8_t Phobos_UInt8;
typedef uint16_t Phobos_UInt16;
typedef uint32_t Phobos_UInt32;
typedef uint64_t Phobos_UInt64;

typedef struct String { Phobos_Int32 length; Phobos_Byte bytes[]; } String;
struct Array__Phobos_Byte__ { Phobos_Int32 length; Phobos_Byte elements[]; };
struct Array__Phobos_Byte__ *ToByteArray(String *str) {
struct Array__Phobos_Byte__ *array = malloc(str->length + sizeof(Phobos_Int32));
array->length = str->length;
memcpy(array->elements, str->bytes, str->length);
return array;
}

struct Phobos_Compiler_Pos {
Phobos_Int32 _value;
};

struct Phobos_Compiler_Pos Phobos_Compiler_Pos_1(Phobos_Int32 value) {
return (struct Phobos_Compiler_Pos){._value = value};
}

typedef uint32_t Phobos_Compiler_TokenKind;

struct Phobos_Compiler_Token {
Phobos_Compiler_TokenKind _kind;
struct Phobos_Compiler_Pos _start;
struct Phobos_Compiler_Pos _end;
String * _lexeme;
};

struct Phobos_Compiler_Scanner {
struct Array__Phobos_Byte__ * _code;
Phobos_UInt32 _offset;
struct Phobos_Compiler_Token _token;
Phobos_Bool _atEndOfSource;
};


void Phobos_Compiler_NextChar() {
}

struct Phobos_Compiler_Scanner * Phobos_Compiler_Scanner_1(struct Array__Phobos_Byte__ * code) {
struct Phobos_Compiler_Scanner * scanner = malloc(sizeof(struct Phobos_Compiler_Scanner));
scanner->_code = code;
scanner->_offset = 0;
scanner->_atEndOfSource = 0;
scanner->_token = (struct Phobos_Compiler_Token){ 0 };
Phobos_Compiler_NextChar(scanner);
return scanner;
}

void Phobos_Compiler_Main() {
struct Phobos_Compiler_Pos a = Phobos_Compiler_Pos_1(5);
String * _t1 = malloc(5 + sizeof(int32_t));
_t1->length = 5;
memcpy(_t1->bytes, "1 + 2", 5);
String * src = _t1;
struct Phobos_Compiler_Scanner * scanner = Phobos_Compiler_Scanner_1(ToByteArray(src));
}

int main(int argc, char**argv) {
Phobos_Compiler_Main();
}
