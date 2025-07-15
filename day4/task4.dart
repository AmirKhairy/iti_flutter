// Write a program to input radius of circle from user and find diameter,
// circumference and area of the given circle using function
import 'dart:io';

void main() {
  print("Enter the radius of the circle:");
  double radius = double.parse(stdin.readLineSync()!);

  double diameter = calculateDiameter(radius);
  double circumference = calculateCircumference(radius);
  double area = calculateArea(radius);

  print("Diameter: $diameter units");
  print("Circumference: $circumference units");
  print("Area: $area square units");
}

double calculateDiameter(double radius) {
  return 2 * radius;
}

double calculateCircumference(double radius) {
  return 2 * 3.14 * radius;
}

double calculateArea(double radius) {
  return 3.14 * radius * radius;
}
