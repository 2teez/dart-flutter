void main() {
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort((n1, n2) => n2.compareTo(n1)); // sorted list
  print(scores);
  final bGrades = scores.where((grade) => grade >= 80 && grade <= 90);
  print("B Grades: ${bGrades.toList()}");
  //
  final surface = Surface(onTouch: (x, y) => print("$x, $y"));
  surface.touch(202.3, 134.0);
}

// Exercise
typedef TouchHandler = void Function(double x, double y);

class Surface {
  Surface({required this.onTouch});

  final TouchHandler onTouch;

  void touch(double x, double y) => onTouch(x, y);
}
