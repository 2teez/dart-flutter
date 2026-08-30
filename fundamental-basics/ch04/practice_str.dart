import 'package:characters/characters.dart';

void main() {
  String greeting = 'Hello, World!';
  print(greeting);
  print(greeting.codeUnits);
  print(greeting.runes);
  // using grapheme cluster
  print(greeting.characters.length);
  const flag = '🇳🇬';
  print(flag.codeUnits);
  print(flag.runes);
  print(flag.characters);
  print(flag.characters.length);
}
