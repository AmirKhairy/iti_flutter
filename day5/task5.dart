// assume you have a fixed array [1,2,3,4,5,6,7,8,9,10]
// Given an array, double all elements in that array
void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> doubledNumbers = [];
  for (int number in arr) {
    doubledNumbers.add(number * 2);
  }
  print("Original elements of the array: $arr");
  print("Doubled elements of the array: $doubledNumbers");
}

