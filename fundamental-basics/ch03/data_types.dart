void main() {
  const num age1 = 42;
  const age2 = 21;
  print(age1);
  print(age1.runtimeType);
  print(age2.runtimeType);

  double averageAge = (age1 + age2) / 2;
  print(averageAge);
  print(averageAge.runtimeType);
  print(averageAge.round());
  print(averageAge.toInt());
  // exercise
  double attendance = 0.2 * 90;
  double homework = 0.3 * 80;
  double exam = 0.5 * 94;
  int grade = (attendance + homework + exam).round();
  print(grade);
  // type of value
  const value = 10 / 2;
  print(value.runtimeType);
}
