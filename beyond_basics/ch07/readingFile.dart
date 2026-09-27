import 'dart:convert';
import 'dart:io';

void main() {
  readFileAsStream('readingFile.dart');
}

Future<void> readFileAsStream(String path) async {
  final file = File(path);
  final stream = file.openRead();
  await for (final data in stream) {
    final decoded = utf8.decode(data);
    print(decoded);
  }
}
