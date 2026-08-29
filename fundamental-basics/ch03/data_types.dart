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
}
