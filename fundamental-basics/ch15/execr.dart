void main() {
  final myList = ["clojure", "dart", "kotlin", "zig"];
  final iterator = myList.iterator;
  while (iterator.moveNext()) {
    print(iterator.current);
  }
  final firstTenFibonacci = Fibonacci().take(12).toList();
  print(firstTenFibonacci);
}

class Fibonacci extends Iterable<int> {
  @override
  Iterator<int> get iterator => FibonacciIterator.withLimit(2000);
}

class FibonacciIterator implements Iterator<int> {
  int _current = 0;
  int _next = 1;
  int _limit;

  factory FibonacciIterator.withLimit(int limit) {
    return FibonacciIterator._(limit);
  }

  FibonacciIterator._([this._limit = 0]);

  @override
  bool moveNext() {
    final temp = _current;
    _current = _next;
    _next = temp + _next;
    return _current <= _limit;
  }

  @override
  int get current => _current;

  void reset() {
    _current = 0;
    _next = 1;
  }
}
