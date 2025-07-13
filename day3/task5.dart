// Write a program that takes a number and the power, then print the number to that power
import 'dart:io';
import 'dart:math';

void main() {
  print('Enter a number:');
  double number = double.parse(stdin.readLineSync()!);

  print('Enter the power:');
  int power = int.parse(stdin.readLineSync()!);

  // Using a loop
  double loopResult = 1;
  for (int i = 0; i < power; i++) {
    loopResult *= number;
  }
  print('$number to the power of $power is $loopResult');

  // Using pow() function
  num powResult = pow(number, power);
  print('$number to the power of $power is $powResult');
}
