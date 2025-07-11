// Write a program that takes an input from the user then print it
import 'dart:io';

void main() {
  print('Please enter your name:');
  String name = stdin.readLineSync()!;
  print('Hello, $name');
}
