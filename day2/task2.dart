// Write a program to read any digit from 1 to 5, display it as a word
import 'dart:io';

void main() {
  print("Enter a digit between 1 and 5:");
  int digit = int.parse(stdin.readLineSync()!);
  if (digit < 1 || digit > 5) {
    print("Invalid input. Please enter a digit between 1 and 5.");
  }else{
    if(digit == 1) {
      print("One");
    } else if(digit == 2) {
      print("Two");
    } else if(digit == 3) {
      print("Three");
    } else if(digit == 4) {
      print("Four");
    } else if(digit == 5) {
      print("Five");
    }
  }
}
