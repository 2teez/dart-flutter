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
  // exercise
  const numbers = [1, 2, 4, 7];
  for (var i = 0; i < numbers.length; i++) {
    print(numbers[i] * numbers[i]);
  }

  for (final number in numbers) {
    print(number * number);
  }

  final strings = const ['cookies', 'ice cream', 'cake', 'donuts', 'pie', 'brownies'];
  int longestLength = 0;
  String longestString = '';

  int shortestLength = strings[0].length;
  String shortestString = strings[0];

  for (final string in strings) {
    if (string.length > longestLength) {
      longestLength = string.length;
      longestString = string;
    }
    if (string.length < shortestLength) {
      shortestLength = string.length;
      shortestString = string;
    }
  }
  print('Longest: $longestString, Shortest: $shortestString');
  //
  final stringsToSort = ['cookies', 'ice cream', 'cake', 'donuts', 'pie', 'brownies'];
  for (var i = 0; i < stringsToSort.length; i++) {
    for (var j = 0; j < stringsToSort.length; j++) {
      if (stringsToSort[i].length < stringsToSort[j].length) {
        final temp = stringsToSort[i];
        stringsToSort[i] = stringsToSort[j];
        stringsToSort[j] = temp;
      }
    }
  }
  print(stringsToSort);
  //
  final tobeSortedStrings = [
    'cookies',
    'ice cream',
    'cake',
    'donuts',
    'pie',
    'brownies',
  ];
  tobeSortedStrings.sort((a, b) => a.length.compareTo(b.length));
  print(tobeSortedStrings);
}
