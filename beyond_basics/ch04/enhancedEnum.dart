void main() {
  final light = TrafficLight.yellow;
  print(light);
}

enum TrafficLight {
  red('Stop'),
  yellow('Slow down'),
  green('Go');

  const TrafficLight(this._message);

  @override
  String toString() => _message;

  final String _message;
}
