// assume you have a fixed array [1,2,3,4,5,5,5,5,5,6,7,8,9,10]
// Given the above array, take a number from the user and return  number of occurrences of that number
import 'dart:io';

void main() {
  List<int> arr = [1, 2, 3, 4, 5, 5, 5, 5, 5, 6, 7, 8, 9, 10];
  print("Enter a number to search in the array:");
  int userInput = int.parse(stdin.readLineSync()!);

  int count = 0;
  for (int number in arr) {
    if (number == userInput) {
      count++;
    }
  }

  print("Element $userInput found $count times in the array.");
}
