import 'dart:math' as math;

class Sphere {
  final double radius;
  static final double pi = 3.142;
  const Sphere({required this.radius});

  double get volume => 4 / 3 * pi * math.pow(radius, 3);
  double get surfaceArea => 4 * pi * math.pow(radius, 2);
}
