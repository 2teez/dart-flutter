void main() {
  final today = Day.saturday;
  final yesterday = today - 1;
  print(yesterday.displayName);
}

enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

  Day operator -(int other) {
    final numberOfDays = Day.values.length;
    final index = (this.index - other) % numberOfDays;
    return Day.values[index];
  }
}

extension on Day {
  String get displayName => name[0].toUpperCase() + name.substring(1);
}
