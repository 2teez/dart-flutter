void main() {
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  print(stack);
  print(stack.pop());
  print(stack);
  print(stack.peek());
  print(stack.isEmpty);
  print(stack);
}

class Stack<T> {
  final List<T> _items = [];

  void push(T item) => this._items.add(item);

  T pop() {
    if (this._items.length == 0) {
      throw Exception("Stack is empty");
    }
    final value = this._items.removeLast();
    return value;
  }

  T peek() {
    if (this._items.length == 0) {
      throw Exception("Stack is empty");
    }
    return this._items.last;
  }

  bool get isEmpty => this._items.length == 0;

  @override
  String toString() => 'Stack ${this._items}';
}
