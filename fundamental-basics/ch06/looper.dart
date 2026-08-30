void main() {
  int number = 9;
  int nextPowerOfTwo = 1;
  int counter = 0;
  while (nextPowerOfTwo < number) {
    nextPowerOfTwo *= 2;
    counter++;
  }
  print('$nextPowerOfTwo (counter: $counter)');
  // fibonacci challenge
  int nthFibonacciNumber = 58;
  int fibonacci = 0;
  int previous = 0;
  int current = 1;
  for (var index = 1; index < nthFibonacciNumber; index++) {
    fibonacci = previous + current;
    previous = current;
    current = fibonacci;
  }
  print('${nthFibonacciNumber}th Fibonacci number is $fibonacci');
}
