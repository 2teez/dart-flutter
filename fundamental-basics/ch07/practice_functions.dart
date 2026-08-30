void main() {
  print(fullName('John', 'Doe'));
  print(fullNameWithDefaultTitle('John', 'Doe'));
  print(fullName('John', 'Doe', 'Prof.'));
  print(fullNameWithDefaultTitle('John', 'Doe', 'Prof.'));
  print(fullNameWithNamedParameters(firstName: 'John', lastName: 'Doe'));
  print(
    fullNameWithNamedParameters(
      firstName: 'John',
      lastName: 'Doe',
      title: 'Prof.',
    ),
  );
}

String fullName(String firstName, String lastName, [String? title]) {
  if (title != null) {
    return '$title $firstName $lastName';
  }
  return '$firstName $lastName';
}

String fullNameWithDefaultTitle(
  String firstName,
  String lastName, [
  String title = 'Mr.',
]) {
  return '$title $firstName $lastName';
}

String fullNameWithNamedParameters({
  required String firstName,
  String lastName = "",
  String title = 'Mr.',
}) {
  return '$title $firstName $lastName';
}
