// Create a function, take an integer then return true if this number is even otherwise return false

import 'dart:io';

void main() {
  print('Enter a number to check if it is even:');
  int number = int.parse(stdin.readLineSync()!);
  print(isEven(number));
}

bool isEven(int number) {
  return number % 2 == 0;
}
