class Stack<T> {
    private val items = mutableListOf<T>()

    fun push(item: T) {
        items.add(item)
    }

    fun pop(): T {
        return items.removeAt(items.size - 1)
    }

    fun peek(): T {
        return items.last()
    }

    fun isEmpty(): Boolean {
        return items.isEmpty()
    }
}

val stack = Stack<Int>()
stack.push(1)
stack.push(2)
println(stack.pop())  // 2