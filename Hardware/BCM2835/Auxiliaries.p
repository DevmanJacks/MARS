// Auxiliaries.p

const AUX_IRQ:            ^UInt32 = 0x20215000          // Auxiliary Interrupt status
const AUX_ENABLES:        ^UInt32 = 0x20215004          // Auxiliary enables
const AUX_MU_IO_REG:      ^UInt32 = 0x20215040          // Mini Uart I/O Data
const AUX_MU_IER_REG:     ^UInt32 = 0x20215044          // Mini Uart Interrupt Enable
const AUX_MU_IIR_REG:     ^UInt32 = 0x20215048          // Mini Uart Interrupt Identify
const AUX_MU_LCR_REG:     ^UInt32 = 0x2021504C          // Mini Uart Line Control
const AUX_MU_MCR_REG:     ^UInt32 = 0x20215050          // Mini Uart Modem Control
const AUX_MU_LSR_REG:     ^UInt32 = 0x20215054          // Mini Uart Line Status
const AUX_MU_MSR_REG:     ^UInt32 = 0x20215058          // Mini Uart Modem Status
const AUX_MU_SCRATCH:     ^UInt32 = 0x2021505C          // Mini Uart Scratch
const AUX_MU_CNTL_REG:    ^UInt32 = 0x20215060          // Mini Uart Extra Control
const AUX_MU_STAT_REG:    ^UInt32 = 0x20215064          // Mini Uart Extra Status
const AUX_MU_BAUD_REG:    ^UInt32 = 0x20215068          // Mini Uart Baudrate
const AUX_SPI0_CNTL0_REG: ^UInt32 = 0x20215080          // SPI 1 Control register 0
const AUX_SPI0_CNTL1_REG: ^UInt32 = 0x20215084          // SPI 1 Control register 1
const AUX_SPI0_STAT_REG:  ^UInt32 = 0x20215088          // SPI 1 Status
const AUX_SPI0_IO_REG:    ^UInt32 = 0x20215090          // SPI 1 Data
const AUX_SPI0_PEEK_REG:  ^UInt32 = 0x20215094          // SPI 1 Peek
const AUX_SPI1_CNTL0_REG: ^UInt32 = 0x202150C0          // SPI 2 Control register 0
const AUX_SPI1_CNTL1_REG: ^UInt32 = 0x202150C4          // SPI 2 Control register 1