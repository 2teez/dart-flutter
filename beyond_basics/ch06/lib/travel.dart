const convertToKilometers = 1.60934;
const convertToMiles = 0.62137119;

class Travel {
  late final distance;
  Travel(this.distance);

  double get distanceToMiles => distance * convertToMiles;
  double get distanceToKilometers => distance * convertToKilometers;
}
