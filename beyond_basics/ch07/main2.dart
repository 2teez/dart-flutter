Future<void> main() async {
  print('Before Future');
  try {
    final myFuture = await Future<int>.delayed(Duration(seconds: 1), () => 42);
    print(myFuture);
  } catch (e) {
    print(e);
  } finally {
    print('done');
  }
  print('After Future');
}
