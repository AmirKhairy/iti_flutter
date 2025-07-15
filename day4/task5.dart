// create function to take number and return true if this number can divide by 3 and 4

import 'dart:io';

void main() {
  print('Enter a number to check if it is divisible by 3 and 4:');
  int number = int.parse(stdin.readLineSync()!);
  print(isDivisibleBy3And4(number));
}

bool isDivisibleBy3And4(int number) {
  return number % 3 == 0 && number % 4 == 0;
}
