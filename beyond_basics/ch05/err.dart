void main() {
  final say = speak();
  print(say);
  //
  final indexes = [4, 1, 18, 20, 0, 9, 19, 0, 6, 21, 14, 27];
  final sb = StringBuffer();
  for (final index in indexes) sb.write(index.Alphabeth);
  print(sb.toString());
  //
  try {
    final bad = badSpeaking();
    print(bad);
  } catch (e) {
    // can also use on RangeException
    print(e);
  } finally {
    print('done');
  }
}

String badSpeaking() {
  final characters = ' abcdefghijklmnopqrstuvwxyz';
  final sb = StringBuffer();
  final indexes = [4, 1, 18, 20, 0, 9, 19, 0, 6, 21, 14, 27];
  for (final index in indexes) {
    sb.write(characters[index]);
  }
  return sb.toString();
}

String speak() {
  final characters = ' abcdefghijklmnopqrstuvwxyz';
  final sb = StringBuffer();
  final indexes = [4, 1, 18, 20, 0, 9, 19, 0, 6, 21, 14, 27];
  for (final index in indexes) {
    final character = (index >= characters.length) ? "!" : characters[index];
    sb.write(character);
  }
  return sb.toString();
}

extension on int {
  String get Alphabeth {
    final alphabeth = <int, String>{};
    int counter = 0;
    for (final char in ' abcdefghijklmnopqrstuvwxyz'.split('')) {
      alphabeth[counter] = char;
      counter++;
    }
    return alphabeth[this] ?? "!";
  }
}
