// Tokens

export enum TokenKind {
    EndOfSource

    Identifier
    IntegerLiteral
}

export struct Token {
    _kind:  TokenKind
    _start: Pos
    _end:   Pos

    // Don't reference this directly - it may not have a value
    _lexeme: String
}

export func Token(kind: TokenKind, start: Pos, end: Pos) -> Token {
    return Token { _kind = kind, _start = start, _end = end }
}

// export func Token.Lexeme() -> String {
//     if lexeme.data == nil {
//         lexeme = SourceCodeBetween(start, end)
//     }
// 
//     return lexeme
// }