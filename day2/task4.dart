// Write a program to check if a number is odd or even
import 'dart:io';

void main() {
  print("Enter an integer:");
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print("$number is even");
  } else {
    print("$number is odd");
  }
}
