// assume you have a fixed array [1,2,3,4,5,6,7,8,9,10]
// Write a program to take number from user and search whether an element exits or not by returning its index
import 'dart:io';

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print("Enter a number to search in the array:");
  int userInput = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == userInput) {
      print("Element $userInput found at index: $i");
      break;
    } else if (i == numbers.length - 1) {
      print("Element $userInput not found in the array.");
    }
  }
}
