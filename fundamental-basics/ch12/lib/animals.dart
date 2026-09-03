void playGround() {
  final animals = <String>{'cat', 'dog', 'bird', 'fish', 'sheep'};
  final containsSheep = animals.contains('sheep');
  print(containsSheep);
  animals.add('elephant');
  print(animals);
  animals.remove('fish');
  print(animals);
}
