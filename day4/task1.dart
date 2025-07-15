// Create a function, take three integers then return the average as double

import 'dart:io';

void main() {
  print('Enter three integers:');
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  int num3 = int.parse(stdin.readLineSync()!);
  double avg = average(num1, num2, num3);
  print('Average: $avg');
}

double average(int num1, int num2, int num3) {
  return (num1 + num2 + num3) / 3.0;
}
