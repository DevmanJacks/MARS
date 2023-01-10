// Interfaces for nodes of the AST

const Pos = Int32

interface Node {
    StartPos() -> Pos
    EndPos() -> Pos
}

interface Expression {
    Node
    ExpressionNode()
}

interface Statement {
    Node
    StatementNode()
}

interface Declaration {
    Node
    DeclarationNode()
}