import 'rectangle.dart';
import 'user.dart';

void main() {
  final user = User();
  user.name = 'Java';
  user.id = 32;
  print(user);
  print(user.toJson());
  //
  final rect = Rectangle(10, 20);
  print(rect);
  print(rect.area);
}
