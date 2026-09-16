void main() {
  final original = 'Hello, World!'.encode;
  print(original);
  print(original.decode);
  final greetLength = original.length;
  print(greetLength);
  print(greetLength.cubed);
}

extension on int {
  int get cubed => this * this * this;
}

extension on String {
  String get encode => _code(1);
  String get decode => _code(-1);

  String _code(int value) {
    final buff = StringBuffer();
    for (final ch in runes) {
      buff.writeCharCode(ch + value);
    }
    return buff.toString();
  }
}
