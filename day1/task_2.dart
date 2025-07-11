// Write a program that takes 3 numbers from the user then prints the sum of the three numbers
import 'dart:io';

void main() {
  print('Please enter three numbers to calculate the sum:');
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  int num3 = int.parse(stdin.readLineSync()!);
  int sum = num1 + num2 + num3;
  print('The sum of $num1, $num2 and $num3 is: $sum');
}