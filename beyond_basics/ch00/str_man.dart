void main() {
  print('Hello, World!'.toLowerCase());
  final timer = Duration(hours: 3, minutes: 9, seconds: 67);
  final hrs = timer.inHours;
  final mins = "${timer.inMinutes % 60}".padLeft(2, '0');
  final secs = "${timer.inSeconds % 60}".padLeft(2, '0');
  print(" Time is: $hrs:$mins:$secs ".trim());

  final contries = """France
  USA
  Germany
  Benin
  China
  Mexico
  Mongolia
  """;
  print(contries.split('\n').map((e) => e.trim()).join(','));
  // validate credit-card number
  final String ccn = '2345908734560657';
  final ccnPattern = RegExp(r'^[0-9]{16}$');
  if (!ccnPattern.hasMatch(ccn)) {
    print('Card number not correct!');
  } else {
    print('$ccn is corrcet card number');
  }
}
