void main() {
  // students
  final std1 = Student([Roles.Athlete, Roles.StudentUnionMember]);
  print(std1);
  final std2 = Student([Roles.BandMember]);
  print(std2);
}

enum Roles { Athlete, BandMember, StudentUnionMember }

class Person {}

class Student extends Person {
  Student(this.roles);
  final List<Roles> roles;

  @override
  String toString() => "Student(Roles: ${roles.join(', ')})";
}
