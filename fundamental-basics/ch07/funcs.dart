import 'dart:math';

void main() {
  print(calculateCircleArea(radius: 5.0));
  print(calculateCircleArea());
  //
  for (int i = 2; i <= 10; i++) {
    if (isPrime(i)) {
      print('$i is prime');
    } else {
      print('$i is not prime');
    }
  }
  print(isPrime(8893));
}

double calculateCircleArea({double radius = 1.0}) => pi * radius * radius;

bool isPrime(int number) {
  if (number <= 1) return false;
  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) return false;
  }
  return true;
}
