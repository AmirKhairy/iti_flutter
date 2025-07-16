// assume you have a fixed array [1,2,3,4,5,6,7,8,9,10]
// Write a program to count even and odd elements in an array
void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  int evenCount = 0;
  int oddCount = 0;

  for (int number in numbers) {
    if (number % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  print("Total even elements: $evenCount");
  print("Total odd elements: $oddCount");
}
