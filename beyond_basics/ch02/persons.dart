void main() {
  final person1 = Person(name: 'Alice', age: 30);
  final person2 = Person(name: 'Bob', age: 25);
  print(person1.compareTo(person2)); // -1
  print(person2.compareTo(person1)); // -1
  print(person1.compareTo(person1)); // 0
  print(person2.compareTo(person2)); // 0
  //
  final ppl = [person1, person2];
  print(ppl); // [Person(name: Alice, age: 30), Person(name: Bob, age: 25)]
  ppl.sort((p1, p2) => p1._name.compareTo(p2._name));
  print(ppl); // [Person(name: Bob, age: 25), Person(name: Alice, age: 30)]
}

class Person implements Comparable<Person> {
  final String _name;
  final int _age;

  Person({required this._name, required this._age});

  @override
  int compareTo(Person other) {
    return _age.compareTo(other._age) * _name.compareTo(other._name);
  }

  @override
  String toString() => 'Person(name: $_name, age: $_age)';
}
