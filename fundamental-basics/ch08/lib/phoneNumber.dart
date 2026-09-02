class PhoneNumber {
  final String number;

  const PhoneNumber({required this.number});
  const PhoneNumber.fromString({required String number}) : this(number: number);

  @override
  String toString() => number;
}
