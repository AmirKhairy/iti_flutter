// Write a program to extract the last digit of a given number
void main() {
  int number = 5445;
  int lastDigit = number % 10;
  print('The last digit of $number is: $lastDigit');

  String numberString = number.toString();
  String lastDigitString = numberString[numberString.length - 1];
  print('The last digit of $number as a string is: $lastDigitString');
}
