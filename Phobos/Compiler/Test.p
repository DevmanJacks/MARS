
func Main() {
    src := "1 + 2"
    scanner := Scanner(src.ToByteArray())
    scanner.NextToken()
}