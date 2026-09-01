class PhoneNumber {
  final String number;

  const PhoneNumber(this.number);
  const PhoneNumber.fromString(String number) : this(number);

  @override
  String toString() => number;
}
