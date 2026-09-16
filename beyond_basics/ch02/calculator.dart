void main() {
  final calculator = Calculator();
  final result = calculator.sum(4, 8);
  print(result);
}

mixin Adder {
  int sum(int x, int y) {
    return x + y;
  }
}

class Calculator with Adder {}
