class RangeException implements Exception {
  final String message;
  RangeException(this.message);

  @override
  String toString() => message;
}
