// Builtin types that compiler relies on

const Byte = UInt8

//struct Guid {
//    bytes: [16]Byte
//}
// export struct Nilable<T> {
//     hasValue: Bool
//     value:    T
// }

// export Nilable<T>(value: T) {
//     if value == nil
//         hasValue = false
//     else {
//         hasValue = true
//         self.value = value
//     }
// }

export struct Range {
    start: Int
    end:   Int
}

// export Range(start: Int?, end: Int?) {
//     return Range { start, end }
// }