//: Playground - noun: a place where people can play

import Foundation

public class Node {
    var value: String
    var next: Node?
    weak var previous: Node?
    
    init(value: String) {
        self.value = value
    }
    
}

extension Node: CustomStringConvertible {
    public var description: String {
        return "\(self.value)"
    }
}

public class LinkedList {
    fileprivate var head: Node?
    private var tail: Node?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
        return tail
    }
    
    public func append(value: String) {
        
        let newNode = Node(value: value)
        
        if let tailNode = tail {
            newNode.previous = tail
            tailNode.next = newNode
        }
            
        else {
            head = newNode
        }
        
        tail = newNode
    }
    
    public func nodeAt(index: Int) -> Node? {
        if index >= 0 {
            var node = head
            var i = index
            
            while node != nil {
                if i == 0 {return node}
                i -= 1
                node = node!.next
            }
        }
        
        return nil
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        var text = "["
        var node = head
        
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil {text += ", "}
        }
        
        return text + "]"
    }
    
}

let dogBreeds = LinkedList()
dogBreeds.append(value: "Labrador")
dogBreeds.append(value: "Bulldog")
dogBreeds.append(value: "Beagle")
dogBreeds.append(value: "Husky")

print(dogBreeds)
print(dogBreeds.nodeAt(index: 3)?.description)

//: [Next](@next)

