// ake the birth year and check if he is above 18 or not
import 'dart:io';

void main() {
  print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);

  if (age >= 18) {
    print("you are older than 18.");
  } else {
    print("you are younger than 18.");
  }
}
