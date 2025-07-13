// Write a program that firsts generate a number between 0 and 10, then keep
// asking the user to enter a number, if the number is correct print “Correct”
import 'dart:io';
import 'dart:math';

void main() {
  var randomNumber = Random().nextInt(11);

  while (true) {
    print('Guess the number (between 0 and 10):');
    int userGuess = int.parse(stdin.readLineSync()!);

    if (userGuess == randomNumber) {
      print('Correct');
      break;
    } else {
      print(
        'Try again! You guessed $userGuess but the number was $randomNumber.',
      );
      randomNumber = Random().nextInt(11);
    }
  }
}
