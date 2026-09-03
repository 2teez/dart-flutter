void main() {
  final months = <String>[];
  months.add('Jan');
  months.add('Feb');
  months.add('Mar');
  months.add('Apr');
  months.add('May');
  months.add('Jun');
  months.add('Jul');
  months.add('Aug');
  months.add('Sep');
  months.add('Oct');
  months.add('Nov');
  months.add('Dec');

  printed('Before removing', months);
  final marchIndex = months.indexOf('Mar');
  printed(null, [months[marchIndex]]);
  months.removeAt(marchIndex);
  printed('After removing', months);
  months.insert(marchIndex, 'Mar');
  printed('After inserting', months);
}

void printed(String? msg, List<String>? months) {
  print(msg ?? '');
  print(months ?? []);
}
