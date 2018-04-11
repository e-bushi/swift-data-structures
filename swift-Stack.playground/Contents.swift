//: Playground - noun: a place where people can play

struct Stack<T> {
    fileprivate var array: [T] = []
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T? {
        return array.popLast()
    }
    
    func peek() -> T? {
        return array.last
    }
}

extension Stack: CustomStringConvertible {
    
    var description: String {
        
        let topDivider = "-----STACK------\n"
        let bottomDivider = "\n_______________"
        
        let elementos = array.map {"\($0)"}.reversed().joined(separator: "\n")
        
        
        return topDivider + elementos + bottomDivider
    }
    
}


var books = Stack<String>()
books.push("How the World works")
books.push("The Times")
print(books)

