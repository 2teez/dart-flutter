void main() {
  final watermelon = Watermelon("red");
  watermelon.describeColor();
  print(watermelon);
}

class Fruit {
  Fruit(this.color);
  final String color;

  void describeColor() => print("The color of the fruit is $color");

  @override
  String toString() => 'Fruit(color: $color)';
}

class Melon extends Fruit {
  Melon(super.color);
}

class Watermelon extends Melon {
  Watermelon(super.color);

  @override
  void describeColor() {
    super.describeColor();
    print("Watermelon is $color");
  }
}

class Cantaloupe extends Melon {
  Cantaloupe(super.color);
}
