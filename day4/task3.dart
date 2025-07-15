// Write a function to find a cube of a given number
import 'dart:io';

void main() {
  print('Enter a number to find its cube:');
  int number = int.parse(stdin.readLineSync()!);
  print(cube(number));
}

int cube(int number) {
  return number * number * number;
}
