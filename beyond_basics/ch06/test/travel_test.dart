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

  test('Travel Distance to Kilometers', () {
    final givenDistance = 100.0;
    final expectedResult = givenDistance * convertToKilometers;
    final travel = Travel(givenDistance);
    final result = travel.distanceToKilometers;

    expect(result, equals(expectedResult));
  });

  test('Travel Distance to Miles', () {
    final givenDistance = 100.0;
    final expectedResult = givenDistance * convertToMiles;
    final travel = Travel(givenDistance);
    final result = travel.distanceToMiles;

    expect(result, expectedResult);
  });
}
