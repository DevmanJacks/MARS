// Lexical analysis

export struct Scanner {
    _code: []Byte

    _offset:        Int32
    _currentChar:   Char
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
    if _atEndOfSource
        return

    if (_offset >= _code.Length()) {
        _atEndOfSource = true
        return
    }

    _currentChar = _code[_offset]
    _offset += 1
}

export func Scanner.NextToken() {
    if _atEndOfSource
        return

    if _currentChar.IsAlpha()
        ScanIdentifier()
    else if _currentChar.IsDigit()
        ScanNumber()
}

func Scanner.ScanIdentifier() {
//     start := Pos(offset)
// Console.Write(" ")
//     while currentChar.IsAlpha() && !atEndOfSource {
//         NextChar()
//     }

//     token = Token(TokenKind.Identifier, start, Pos(offset - 1))
}

func Scanner.ScanNumber() {
//     start := Pos(offset)

//     while currentChar.IsDigit() && !atEndOfSource {
//         NextChar()
//     }

//     token = Token(TokenKind.IntegerLiteral, start, Pos(offset - 1))
}

func Scanner.Token() -> Token {
    return _token
}