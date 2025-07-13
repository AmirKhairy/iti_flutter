// Write a program that always asks the user for a number, if number is even print even if it’s odd
// print odd and exit if the number Is negative or zero
import 'dart:io';

void main() {
  while (true) {
    print('Enter a number:');
    int number = int.parse(stdin.readLineSync()!);

    if (number <= 0) {
      print('Exit');
      break;
    }

    if (number % 2 == 0) {
      print('Even');
      continue;
    }
    print('Odd');
  }
}
