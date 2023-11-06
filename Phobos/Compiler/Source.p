// All things source files

// export struct Position {
//     filename: String
//     line:     UInt32
//     column:   UInt32
// }

// export func Phobos.String(p: Position) -> String {
//     return "wibble:10:5"
// }

export struct Pos {
    _value: Int32
}

export func Pos(value: Int32) -> Pos {
    return Pos { _value = value }
}

// export func SourceCodeBetween(start: Pos, end: Pos) -> String {
// 
// }

// struct SourceFile {
//    filename: String
//    data:     ^Array<Byte>

//    lineStartPositions: List<UInt32>
// }

// var sourceFiles: List<SourceFile>

