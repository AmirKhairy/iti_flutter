// assume you have a fixed array [1,2,3,4,5,6,7,8,9,10]
// Write a program to find the sum of array elements using the function
void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int sum = calculateSum(numbers);
  print("Sum of the array elements: $sum");
}
int calculateSum(List<int> arr) {
  int sum = 0;
  for (int number in arr) {
    sum += number;
  }
  return sum;
}