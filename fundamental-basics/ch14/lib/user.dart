class User {
  User({required this._id, required this._name, required this._emails});

  final String _id;
  final String _name;
  final List<String> _emails;

  Map<String, dynamic> toJson() {
    return <String, dynamic> {
        "id": this._id,
	"name": this._name,
	"emails": this._emails,
	};
  }

  @override
  String toString() => 'User(id: $_id, name: $_name, emails: $_emails)';
}
