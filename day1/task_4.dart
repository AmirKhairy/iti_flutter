// Write a program to compute the perimeter and area of a rectangle. Your code should ask the user to insert the width and the height
import 'dart:io';

void main() {
  print('Please enter the width of the rectangle:');
  double width = double.parse(stdin.readLineSync()!);
  print('Please enter the height of the rectangle:');
  double height = double.parse(stdin.readLineSync()!);

  double area = width * height;
  double perimeter = 2 * (width + height);

  print('The area of the rectangle is: $area');

  print('The perimeter of the rectangle is: $perimeter');
}
