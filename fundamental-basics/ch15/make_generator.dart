import 'lib/squares.dart';

void main() {
  final squares = hundredSquares();
  squares.forEach(print);
  //
  // using the iterator
  // calling the iterator directly
  print('using the iterator');
  final iterator = SquareIterator(max: 10);
  while (iterator.moveNext()) {
    print(iterator.current);
  }

  // use a class that implements Iterable<int>
  final hundredSquaresUsingIterable = HundredSquares();
  hundredSquaresUsingIterable.forEach(print);
}

// generate a first hundred squares of numbers from 1 to 100
Iterable<int> hundredSquares() sync* {
  for (int i = 1; i <= 100; i++) {
    yield i * i;
  }
}
