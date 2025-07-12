// Ask the user to enter a number between 1 and 12, then print the corresponding month
// Use switch statement not if statement
import 'dart:io';

void main() {
  print("Enter a number between 1 and 12:");
  int monthNumber = int.parse(stdin.readLineSync()!);

  switch (monthNumber) {
    case 1:
      print("January");
      break;
    case 2:
      print("February");
      break;
    case 3:
      print("March");
      break;
    case 4:
      print("April");
      break;
    case 5:
      print("May");
      break;
    case 6:
      print("June");
      break;
    case 7:
      print("July");
      break;
    case 8:
      print("August");
      break;
    case 9:
      print("September");
      break;
    case 10:
      print("October");
      break;
    case 11:
      print("November");
      break;
    case 12:
      print("December");
      break;
    default:
      print("Invalid input. Please enter a number between 1 and 12.");
  }
}
