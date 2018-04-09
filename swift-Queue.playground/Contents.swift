//: Playground - noun: a place where people can play

public struct Queue<T> {
    
    fileprivate var list = LinkedList<T>()
    
    public mutating func enqueue(_ element: T) {
        list.append(value: element)
    }
    
    public mutating func dequeue(_ element: T) -> T? {
        
        guard !list.isEmpty, let element = list.first else {return nil}
        
        list.removeNode(node: element)
        
        return element.value
    }
    
    public func peek() -> T? {
        guard !list.isEmpty, let element = list.first else {return nil}
        
        return element.value
    }
    
    public func isEmpty() -> Bool {
        return list.isEmpty
    }
    
}

extension Queue: CustomStringConvertible {
    public var description: String {
        let text = list.description
        
        return text
    }
}
