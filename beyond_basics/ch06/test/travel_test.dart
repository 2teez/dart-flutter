import 'package:test/test.dart';

import '../lib/travel.dart';

void main() {
  test('Travel Distance', () {
    final givenDistance = 100.0;
    final travel = Travel(givenDistance);
    final result = travel.distance;
    final expectedDistance = givenDistance;
    expect(result, equals(expectedDistance));
  });
}
