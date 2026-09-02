import 'package:ch08/math.dart' as math;
import 'package:ch08/phoneNumber.dart';
import 'package:ch08/rectangle.dart';
import 'package:ch08/sphere.dart';
import 'package:ch08/student.dart';
import 'package:ch08/user.dart';

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
  //
  final student = Student(firstName: 'Bert', grade: 95);
  final student2 = Student(firstName: 'Ernie', lastName: 'Smith', grade: 85);
  print(student);
  print(student2);
  //
  print(math.max(5, 10));
  print(math.min(5, 10));
  //
  final sphere = Sphere(radius: 12);
  print(sphere);
  print(sphere.volume);
  print(sphere.surfaceArea);
}
