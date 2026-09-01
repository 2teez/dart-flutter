import 'phoneNumber.dart';
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
  //
  const phone = PhoneNumber.fromString(number: '123-456-7890');
  print(phone);
  const phone2 = PhoneNumber(number: '0705-554-070');
  print(phone2);
}
