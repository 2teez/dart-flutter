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
}
