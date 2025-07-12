// Write a program that allows the user to insert an integer then print negative if it is a negative number otherwise print positive
import 'dart:io';

void main() {
  print("Enter an integer:");
  int number = int.parse(stdin.readLineSync()!);
  if (number < 0) {
    print("negative");
  } else {
    print("positive");
  }
}
