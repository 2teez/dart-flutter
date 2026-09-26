void main() {
  final today = Day.saturday;
  final yesterday = today - 1;
  print("Today is ${today.displayName}");
  print("Yesterday was ${yesterday.displayName}");
  final tomorrow = today + 1;
  print("Tomorrow will be ${tomorrow.displayName}");
  final in4Days = today + 4;
  print("In 4 days it will be ${in4Days.displayName}");
}

enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,

  /*Day operator -(int other) {
    final numberOfDays = Day.values.length;
    final index = (this.index - other) % numberOfDays;
    return Day.values[index];
  }*/
}

extension on Day {
  String get displayName => name[0].toUpperCase() + name.substring(1);

  Day operator +(int other) {
    final index = _oscillate(other);
    return Day.values[index];
  }

  Day operator -(int other) {
    final index = _oscillate(-other);
    return Day.values[index];
  }

  int _oscillate(int other) {
    final numberOfDays = Day.values.length;
    return (this.index + other) % numberOfDays;
  }
}
