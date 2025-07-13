// Write a program to take two numbers from the user, then print all the numbers between them
// Assume first number is always less than the second number
import 'dart:io';

void main() {
  print('Enter the first number:');
  int firstNumber = int.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  int secondNumber = int.parse(stdin.readLineSync()!);
  if (firstNumber > secondNumber) {
    print('First number should be less than second number.');
    return;
  } else {
    print('Numbers between $firstNumber and $secondNumber:');
    for (int i = firstNumber + 1; i < secondNumber; i++) {
      print(i);
    }
  }
}
