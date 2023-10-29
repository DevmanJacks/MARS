// GPIO.p

const GPFSEL0:   ^UInt32 = 0x2020000            // GPIO Function Select 0
const GPFSEL1:   ^UInt32 = 0x2020004            // GPIO Function Select 1
const GPFSEL2:   ^UInt32 = 0x2020008            // GPIO Function Select 2
const GPFSEL3:   ^UInt32 = 0x202000C            // GPIO Function Select 3
const GPFSEL4:   ^UInt32 = 0x2020010            // GPIO Function Select 4
const GPFSEL5:   ^UInt32 = 0x2020014            // GPIO Function Select 5
const GPSET0:    ^UInt32 = 0x202001C            // GPIO Pin Output Set 0 
const GPSET1:    ^UInt32 = 0x2020020            // GPIO Pin Output Set 1 
const GPCLR0:    ^UInt32 = 0x2020028            // GPIO Pin Output Clear 0
const GPCLR1:    ^UInt32 = 0x202002C            // GPIO Pin Output Cl
const GPLEV0:    ^UInt32 = 0x2020034            // GPIO Pin Level 0
const GPLEV1:    ^UInt32 = 0x2020038            // GPIO Pin Level 1
const GPEDS0:    ^UInt32 = 0x2020040            // GPIO Pin Event Detect Status 0
const GPEDS1:    ^UInt32 = 0x2020044            // GPIO Pin Event Detect Status 1
const GPREN0:    ^UInt32 = 0x202004C            // GPIO Pin Rising Edge Detect Enable 0
const GPREN1:    ^UInt32 = 0x2020050            // GPIO Pin Rising Edge Detect Enable 1
const GPFEN0:    ^UInt32 = 0x2020058            // GPIO Pin Falling  Edge Detect Enable 0
const GPFEN1:    ^UInt32 = 0x202005C            // GPIO Pin Falling  Edge Detect Enable 1
const GPHEN0:    ^UInt32 = 0x2020064            // GPIO Pin High Detect Enable 0
const GPHEN1:    ^UInt32 = 0x2020068            // GPIO Pin High Detect Enable 1
const GPLEN0:    ^UInt32 = 0x2020070            // GPIO Pin Low Detect Enable 0
const GPLEN1:    ^UInt32 = 0x2020074            // GPIO Pin Low Detect Enable 1
const GPAREN0:   ^UInt32 = 0x202007C            // GPIO Pin Async. Rising Edge Detect 0
const GPAREN1:   ^UInt32 = 0x2020080            // GPIO Pin Async. Rising Edge Detect 1
const GPAFEN0:   ^UInt32 = 0x2020088            // GPIO Pin Async. Falling Edge Detect 0
const GPAFEN1:   ^UInt32 = 0x202008C            // GPIO Pin Async. Falling Edge Detect 1
const GPPUD:     ^UInt32 = 0x2020094            // GPIO Pin Pull-up/down Enable
const GPPUDCLK0: ^UInt32 = 0x2020098            // GPIO Pin Pull-up/down Enable Clock 0
const GPPUDCLK1: ^UInt32 = 0x202009C            // GPIO Pin Pull-up/down Enable Clock 1

enum FunctionSelect {
    Input              = 0b000
    Output             = 0b001
    AlternateFunction0 = 0b100
    AlternateFunction1 = 0b101
    AlternateFunction2 = 0b110
    AlternateFunction3 = 0b111
    AlternateFunction4 = 0b011
    AlternateFunction5 = 0b010
}

enum PullUpPullDown {
    Off            = 0b00
    EnablePullDown = 0b01
    EnablePullUp   = 0b10
}

func GpioClearPin(pin: Int) {

}

func GpioSetPin(pin: Int) {

}

func GpioSetPinFunction(pin: Int, function: FunctionSelect) {

}

func GpioSetPullUpPullDownOnPins(pins: []Int, state: PullUpPullDown) {
    GPPUD^ = state

    // Wait 150 cycles
    for i in 0..74 { }

    clk0 = 0
    clk1 = 0

    for pin in pins {
        if pin >= 0 && pin <= 31
            clk0 &= 1 << pin
        else if pin >=32 && pin <= 53
            clk1 &= 1 << (pin - 31)
        else
            Panic("Pin out of range: 0..53")
    }

    // Set the clocks
    if clk0 != 0 GPPUDCLK0^ = clk0
    if clk1 != 0 GPPUDCLK1^ = clk1

    // Wait 150 cycles
    for i in 0..74 { }

    // Reset the clocks
    if clk0 != 0 GPPUDCLK0^ = 0
    if clk1 != 0 GPPUDCLK1^ = 0
}