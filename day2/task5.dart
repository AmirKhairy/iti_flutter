// Write a program takes a character from user and print if it’s a vowel or not
import 'dart:io';

void main() {
  print("Enter a character:");
  String? input = stdin.readLineSync();
  if (input == 'a' ||
      input == 'e' ||
      input == 'i' ||
      input == 'o' ||
      input == 'u' ||
      input == 'A' ||
      input == 'E' ||
      input == 'I' ||
      input == 'O' ||
      input == 'U') {
    print("$input is a vowel");
  } else {
    print("$input is not a vowel");
  }
}
