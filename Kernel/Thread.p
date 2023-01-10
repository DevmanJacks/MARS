// The execution unit for a process in the MARS OS

struct Thread {
    id:         Int16
    taskId:     Int8
    entryPoint: ^Int32
}

proc CreateThread(task: Int8) -> (threadId: Int16, error: Int32) {

}

proc DeleteThread(id: Int16) -> Int32 {
    
}