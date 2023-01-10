struct Buffer {
    data: Array<UInt8>
}

struct PieceTable {
    buffers: List<Buffer>        
    nodes:   List<PieceDescriptor>
}

struct PieceDescriptor {
    bufferIndex: Int
    start:       Int
    length:      Int
}