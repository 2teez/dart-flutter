class Student {
  final firstName;
  final lastName;
  final int _grade;

  int get grade => this._grade;

  Student({required this.firstName, this.lastName = "", required this._grade});

  @override
  String toString() => 'Student($firstName $lastName ($grade))';
}
