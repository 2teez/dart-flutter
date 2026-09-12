import 'dart:convert';

import 'package:ch14/user.dart';

void main() {
  final personInfo = <String, String>{
    'name': 'malto ruby',
    'profession': 'programmer',
    'country': 'japan',
    'city': 'tokyo',
  };

  print(personInfo);
  personInfo['country'] = 'Canada';
  personInfo['city'] = 'Ottawa';
  print(personInfo);

  for (var entry in personInfo.entries) {
    print('${entry.key}: ${entry.value}');
  }
  //
  final user = User(
    id: '1345',
    name: 'malto ruby',
    emails: ['malto.ruby@example.com', 'maltodotruby@example.com'],
  );
  print(user);
  print(user.toJson());

  final person = const <String, dynamic>{"name": "javascript", "age": 34};

  final personJson = json.encode(person);
  print(personJson);
  print(json.decode(personJson));
  print(User.fromJson(json.decode(personJson)));
}
