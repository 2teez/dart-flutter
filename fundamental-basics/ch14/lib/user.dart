class User {
  User({required this._id, required this._name, required this._emails});

  final String _id;
  final String _name;
  final List<String> _emails;
  @override
  String toString() => 'User(id: $_id, name: $_name, emails: $_emails)';
}
