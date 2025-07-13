// Write a program to ask the user to enter a number then print its multiplication table
import 'dart:io';

void main() {
  print('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 12; i++) {
    print('$number x $i = ${number * i}');
  }
}
