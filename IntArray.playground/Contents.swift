import Cocoa

fileprivate class IntArrayBuffer {
    var storage: [Int]

    init() {
        storage = []
    }
    
    init(buffer: IntArrayBuffer) {
        storage = buffer.storage
    }
}

struct IntArray {
    private var buffer: IntArrayBuffer
    
    init() {
        buffer = IntArrayBuffer()
    }
    
    func describe() {
        print(buffer.storage)
    }
    
    private mutating func copyIfNeeded() {
        if !isKnownUniquelyReferenced(&buffer) {
            print("Making a copy of \(buffer.storage)")
            buffer = IntArrayBuffer(buffer: buffer)
        }
    }
    
    mutating func insert(_ value: Int, at index: Int) {
        copyIfNeeded()
        buffer.storage.insert(value, at: index)
    }

    mutating func append(_ value: Int) {
        copyIfNeeded()
        buffer.storage.append(value)
    }
    
    mutating func remove(at index: Int) {
        copyIfNeeded()
        buffer.storage.remove(at: index)
    }
}

var integers = IntArray()
integers.append(1)
integers.append(2)
integers.append(4)
integers.describe()
print("Copying integers to moreIntegers")
var moreIntegers = integers
print("Inserting in to moreIntegers")
moreIntegers.insert(3, at: 2)
integers.describe()
moreIntegers.describe()
