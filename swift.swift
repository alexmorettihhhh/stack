struct Stack<Element> {
    private var items = [Element]()

    mutating func push(_ item: Element) {
        items.append(item)
    }

    mutating func pop() -> Element {
        return items.removeLast()
    }

    func peek() -> Element? {
        return items.last
    }

    var isEmpty: Bool {
        return items.isEmpty
    }
}

var stack = Stack<Int>()
stack.push(1)
stack.push(2)
print(stack.pop())  // 2