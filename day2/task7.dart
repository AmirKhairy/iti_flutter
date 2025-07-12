//Write a program that takes 3 numbers and print the minimum of the three
import 'dart:io';

void main() {
  print("Enter the first number:");
  int firstNumber = int.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  int secondNumber = int.parse(stdin.readLineSync()!);

  print("Enter the third number:");
  int thirdNumber = int.parse(stdin.readLineSync()!);

  if (firstNumber <= secondNumber && firstNumber <= thirdNumber) {
    print("$firstNumber is the minimum number.");
  } else if (secondNumber <= firstNumber && secondNumber <= thirdNumber) {
    print("$secondNumber is the minimum number.");
  } else {
    print("$thirdNumber is the minimum number.");
  }
}
