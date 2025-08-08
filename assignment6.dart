// // Q2: Implement a code that finds the
// // largest element in a list using a for loop.

// // Example:
// // Input:
// // [3, 9, 1, 6, 4, 2, 8, 5, 7]

// void main(){
//   List <int> nums = [3, 9, 1, 6, 4, 2, 8, 5, 7];
//   int largest = nums[0];

//   for (int i = 1; i < nums.length; i++) {
//     if (nums[i] > largest) {
//       largest = nums[i];
//     }
//   }
//   print("The largest element in the list is: $largest");
// }


// // Q3. Write a program that prints the
// // multiplication table of a given number using a for loop.

// // Example: Input: 5

// void main(){
//   int number = 5;
//   for (int i = 1; i <= 10; i++) {
//     print("$number x $i = ${number * i}");
//     }
// }

// // Q4. Implement a function that checks if a given string is a
// // palindrome.
// // Example:
// // Input:
// // "radar"
// // Output:
// // "radar" is a palindrome.

// void main() {
//   String input = "radar";
//   bool isPalindrome = true;

//   for (int i = 0; i < input.length ~/ 2; i++) {
//     if (input[i] != input[input.length - 1 - i]) {
//       isPalindrome = false;
//       break;
//     }
//   }

//   if (isPalindrome) {
//     print('"$input" is a palindrome.');
//   } else {
//     print('"$input" is not a palindrome.');
//   }
// }


// // Q6. Write a program that takes a list
// // of numbers as input and prints the numbers greater than 5 using a for loop and
// // if-else condition.

// void main() {
//   List<int> numbers = [3, 7, 1, 9, 4, 6, 2, 8, 5];
//   List<int> greaterThanFive = [];

//   for (int number in numbers) {
//     if (number > 5) {
//       greaterThanFive.add(number);
//     }
//   }

//   print("Numbers greater than 5: $greaterThanFive");
// }