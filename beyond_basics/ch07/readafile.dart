import 'dart:io';

Future<void> main() async {
  final contents = await readFileAsString("readafile.dart");
  print(contents);
  //
  final stream = await readFileAsStream("readafile.dart");
  await for (final data in stream) {
    print(data);
  }
}

Future<String> readFileAsString(String path) async {
  final file = File(path);
  final contents = await file.readAsString();
  return contents;
}

Future<Stream<List<int>>> readFileAsStream(String path) async {
  final file = File(path);
  final stream = file.openRead();
  // stream.listen((data) => print(data));
  return stream;
}
