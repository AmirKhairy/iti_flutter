// assume you have a fixed array [1,2,3,4,5,6,7,8,9,10]
// Write a program that returns the maximum number of a given array
void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int maxNumber = findMax(numbers);
  print("Maximum number in the array: $maxNumber");
}

int findMax(List<int> arr) {
  int max = arr[0];
  for (int number in arr) {
    if (number > max) {
      max = number;
    }
  }
  return max;
}