// Lexical analysis

export struct Scanner {
    _code: []Byte

    _offset:        UInt32
    // currentChar:   Char
    _token:         Token
    _atEndOfSource: Bool
}

export func Scanner(code: []Byte) -> ^Scanner {
    var scanner: ^Scanner = HeapAlloc(SizeOf(Scanner))
    scanner._code = code

    // Prime the scanner
    scanner._offset = 0
    scanner._atEndOfSource = false
    scanner._token = Token {}
    scanner.NextChar()

    return scanner
}

func Scanner.NextChar() {
//     if (nextOffset >= code.length) {
//         atEndOfSource = true
//         return
//     }

//     offset = nextOffset

//     // TODO: handle unicode characters more than 1 byte
//     currentChar = code[offset]
//     nextOffset += 1
}

// export func Scanner.NextToken() {
//     if atEndOfSource {
//         if token.kind != TokenKind.EndOfSource {
//             EndOfSourcePos := Pos(offset)
//             token = Token(TokenKind.EndOfSource, EndOfSourcePos, EndOfSourcePos)
//         }

//         return
//     }

//     if currentChar.IsAlpha() {
//         ScanIdentifier()
//     } else if currentChar.IsDigit() {
//         ScanNumber()
//     }
// }

// func Scanner.ScanIdentifier() {
//     start := Pos(offset)
// Console.Write(" ")
//     while currentChar.IsAlpha() && !atEndOfSource {
//         NextChar()
//     }

//     token = Token(TokenKind.Identifier, start, Pos(offset - 1))
// }

// func Scanner.ScanNumber() {
//     start := Pos(offset)

//     while currentChar.IsDigit() && !atEndOfSource {
//         NextChar()
//     }

//     token = Token(TokenKind.IntegerLiteral, start, Pos(offset - 1))
// }