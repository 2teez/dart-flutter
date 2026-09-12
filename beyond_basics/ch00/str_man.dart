void main() {
  print('Hello, World!'.toLowerCase());
  final timer = Duration(hours: 3, minutes: 9, seconds: 67);
  final hrs = timer.inHours;
  final mins = "${timer.inMinutes % 60}".padLeft(2, '0');
  final secs = "${timer.inSeconds % 60}".padLeft(2, '0');
  print(" Time is: $hrs:$mins:$secs ".trim());
}
