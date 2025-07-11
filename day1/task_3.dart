// Write a program that takes 3 numbers from the user then prints the average of the three numbers
import 'dart:io';

void main() {
  print('Please enter three numbers to calculate the average:');
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  int num3 = int.parse(stdin.readLineSync()!);
  double average = (num1 + num2 + num3) / 3;
  print('The average of $num1, $num2 and $num3 is: $average');
}