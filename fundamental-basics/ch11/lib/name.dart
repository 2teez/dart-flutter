class Name {
  Name._(String givenName, [String? surname])
    : _givenName = givenName,
      _surname = surname;
  Name._surnameFirst(String surname, String givenName)
    : _givenName = givenName,
      _surname = surname;

  factory Name(String name) {
    final parts = name.split(' ');
    if (parts.length == 1) {
      return Name._(parts[0]);
    }
    return Name._surnameFirst(parts[0], parts[1]);
  }

  final String _givenName;
  final String? _surname;
  late final bool surnameIsFirst = _surname != null && _surname.isNotEmpty;

  @override
  String toString() => surnameIsFirst
      ? 'Name(surname: $_surname, name: $_givenName)'
      : 'Name(name: $_givenName)';
}
