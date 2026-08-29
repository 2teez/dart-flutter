import 'dart:math';

void main() {
  print(sin(45 * pi / 180));
  print(cos(135 * pi / 180));
  print(sqrt(2));
  // exercise
  var new_value = 1 / sqrt(2);
  print(new_value);
  print(new_value == sin(45 * pi / 180));
}
