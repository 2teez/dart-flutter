void main() {
  print('Before Future');
  Future<int>.delayed(Duration(seconds: 1), () => 42)
      .then((value) => print(value))
      .catchError((error) => print(error))
      .whenComplete(() => print('done'));
  print('After Future');
}
