class Stack<T> {
  List<T> _items = [];

  void push(T item) {
    _items.add(item);
  }

  T pop() {
    if (_items.isEmpty) throw Exception("Stack is empty");
    return _items.removeLast();
  }

  T peek() {
    if (_items.isEmpty) throw Exception("Stack is empty");
    return _items.last;
  }

  bool is_empty() {
    return _items.isEmpty;
  }
}

void main() {
  var stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  print(stack.pop());  // 2
}