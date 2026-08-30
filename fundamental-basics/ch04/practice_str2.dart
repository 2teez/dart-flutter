import 'package:characters/characters.dart';

void main() {
  String name = "Dart";
  print("Hello, ${name}!");
  const oneThird = 1 / 3;
  print("One third is $oneThird");
  final sentence = 'One third is ${oneThird.toStringAsFixed(3)}';
  print(sentence);
  //
  // Exercise:
  const String firstName = "Java";
  const String lastName = "Gosling";
  const String fullName = "$firstName $lastName";
  print(fullName);
  const greetings = "Hello, my name is $fullName";
  print(greetings);
  // inserting a code character
  var loving =
      'I \u2764 Flutter\u0021'
      ' and I \u2764 Dart\u0021';
  print(loving);
  // challenge
  const vote = 'Thumbs up! 👍';
  print(vote);
  print(vote.length);
  print(vote.runes);
  print(vote.codeUnits);
  print(vote.characters.length);
  //
  String newName = 'Ray';
  newName += ' Wender';
  print(newName);
  //
  const number = 10;
  const multipiler = 5;
  final summary = '$number \u00D7 $multipiler = ${number * multipiler}';
  print(summary);
}
