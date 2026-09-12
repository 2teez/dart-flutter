class SquareIterator implements Iterator<int> {
  int _current = 0;
  final int _max;

  SquareIterator({required this._max});

  @override
  int get current => _current * _current;

  @override
  bool moveNext() {
    _current++;
    return _current <= _max;
  }
}

class HundredSquares extends Iterable<int> {
  @override
  Iterator<int> get iterator => SquareIterator(max: 100);
}
