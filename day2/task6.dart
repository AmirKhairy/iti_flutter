// Write a program that takes 2 numbers and print the minimum of the two
import 'dart:io';

void main() {
  print("Enter the first number:");
  int firstNumber = int.parse(stdin.readLineSync()!);
  
  print("Enter the second number:");
  int secondNumber = int.parse(stdin.readLineSync()!);
  
  if (firstNumber < secondNumber) {
    print("$firstNumber is the minimum number.");
  } else if (secondNumber < firstNumber) {
    print("$secondNumber is the minimum number.");
  } else {
    print("Both numbers are equal.");
  }
}