void main() {
  final watermelon = Watermelon("red");
  watermelon.describeColor();
  print(watermelon);
  // students
  final std1 = Student([Roles.Athlete, Roles.StudentUnionMember]);
  print(std1);
  final std2 = Student([Roles.BandMember]);
  print(std2);
}

class Fruit {
  Fruit(this.color);
  final String color;

  void describeColor() => print("The color of the fruit is $color");

  @override
  String toString() => 'Fruit(color: $color)';
}

class Melon extends Fruit {
  Melon(super.color);
}

class Watermelon extends Melon {
  Watermelon(super.color);

  @override
  void describeColor() {
    super.describeColor();
    print("Watermelon is $color");
  }
}

class Cantaloupe extends Melon {
  Cantaloupe(super.color);
}

enum Roles { Athlete, BandMember, StudentUnionMember }

class Person {}

class Student extends Person {
  Student(this.roles);
  final List<Roles> roles;

  @override
  String toString() => "Student(Roles: ${roles.join(', ')})";
}
