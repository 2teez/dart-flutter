// uses enumeration
enum Weather { sunny, snowy, cloudy, rainy }

// challenge
enum AudioState { playing, paused, stopped }

void main() {
  // boolean statements in dart
  const myAge = 30;
  const isTeenager = myAge >= 13 && myAge < 20;
  print(isTeenager);
  const maryAge = 16;
  const bothTeenagers = isTeenager && maryAge >= 13 && maryAge < 20;
  print(bothTeenagers);
  //
  if (isTeenager) {
    print('My age is between 13 and 19');
  } else {
    print('My age is not between 13 and 19');
  }
  // uses ternary operator
  final result = isTeenager
      ? 'My age is between 13 and 19'
      : 'My age is not between 13 and 19';
  print(result);
  // use a switch statement
  // switch can use both int and String values
  const number = 3;
  switch (number) {
    case 0:
      print('Zero');
      break;
    case 1:
      print('One');
      break;
    case 2:
      print('Two');
      break;
    case 3:
      print('Three');
      break;
    default:
      print('Other');
  }

  // using enum
  final weather = Weather.sunny;
  switch (weather) {
    case Weather.sunny:
      print('Sunny');
      break;
    case Weather.snowy:
      print('Snowy');
      break;
    case Weather.cloudy:
      print('Cloudy');
      break;
    case Weather.rainy:
      print('Rainy');
      break;
  }
  // using audio state enum
  final audioState = AudioState.playing;
  switch (audioState) {
    case AudioState.playing:
      print('Playing');
      break;
    case AudioState.paused:
      print('Paused');
      break;
    case AudioState.stopped:
      print('Stopped');
      break;
  }
}
