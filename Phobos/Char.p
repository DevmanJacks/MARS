// UTF-8 character

export struct Char {
    _byte: Byte
}

export func Char(byte: Byte) -> Char {
    return Char { _byte = byte }
}

export func Char.IsAlpha() -> Bool {
    if (_byte >= 65 && _byte <= 90) || (_byte >= 97 && _byte <= 122)
        return true
    
    return false
}

export func Char.IsDigit() -> Bool {
    if _byte >= 48 && _byte <= 57
        return true

    return false
}