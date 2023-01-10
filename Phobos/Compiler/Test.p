enum FunctionSelect {
    Input = 0b000
    Output = 0b001
}

func Main() {
    const GPFSEL1: ^UInt32 = 0x20200004
    const GPCLR0: ^UInt32 = 0x20200028

    // Set pin function to ouptut
    GPFSEL1^ = FunctionSelect.Output << 18

    // Set pin low to turn on ACT LED
    GPCLR0^ = 1 << 16
}
