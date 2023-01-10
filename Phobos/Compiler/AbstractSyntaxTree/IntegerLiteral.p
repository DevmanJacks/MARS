// Integer literals

export struct IntegerLiteral {
    token: Token
    value: Int64
}

func IntegerLiteral.ExpressionNode() {}

func IntegerLiteral.StartPos() -> Pos {
    return token.StartPos()
}

func IntegerLiteral.EndPos() -> Pos {
    return token.EndPos()
}