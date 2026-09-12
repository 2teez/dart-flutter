void main() {
  final person = <String, dynamic>{
    'name': "Java",
    'age': 34,
    'location': 'sweden',
    'long': -34,
    'lati': 25,
  };

  print(person);
  final myIterable = person.keys;

  // print the third element
  printed("Print the third element of Iterable: ", myIterable.elementAt(2));
  // print the first and last element
  printed(
    "First and Last : ",
    "${MyString.toTitleCase(myIterable.first)} and ${MyString.toTitleCase(myIterable.last)}",
  );
  for (final data in person.entries) {
    print("$data");
  }
  // using the keys
  for (final key in person.keys) {
    print("$key => person[$key]");
  }

  printed("Length of the data structure: ", "${myIterable.length}");
  print(
    "Check out the MyString again: ${"flutter is Amazing".split(" ").map((e) => MyString.toTitleCase(e).string).join(" ")}",
  );
}

void printed(String msg, String? it) => print("$msg ${it ?? ""}");

class MyString {
  MyString._internal(this._str);
  factory MyString.toTitleCase(String str) =>
      MyString._internal("${str[0].toUpperCase()}${str.substring(1).toLowerCase()}");
  String get string => this._str;
  late final String _str;
  @override
  String toString() => this._str;
}
