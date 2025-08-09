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


// // Q7.  Write a program that counts the
// // number of vowels in a given string using a for loop and if-else condition.

// void main(){
//   String input = "Hello, World!";
//   int vowelCount = 0;
//   List<String> vowels = ['a', 'e', 'i', 'o', 'u'];

//   for (int i = 0; i < input.length; i++) {
//     String char = input[i].toLowerCase();
//     if (vowels.contains(char)) {
//       vowelCount++;
//     }
//   }

//   print("Number of vowels in the string: $vowelCount");
// }


// // Q8. Write a Dart program that counts the number of digits in a given number using a while loop.
// void main(){
//   int number = 123456;
//   int digitCount = 0;

//   while (number > 0) {
//     number ~/= 10; // Remove the last digit
//     digitCount++;
//   }

//   print("Number of digits: $digitCount");
// }


// // Q9. Implement Dart code to generate a random password of a given length using a while loop.
// import 'dart:math' as Math;
// void main() {
//   int passwordLength = 8;
//   String characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
//   String password = '';
//   int i = 0;

//   while (i < passwordLength) {
//     int randomIndex = (characters.length * Math.Random().nextDouble()).floor();
//     password += characters[randomIndex];
//     i++;
//   }

//   print("Generated password: $password");
// }


// // Q10. Create a Dart program that checks if a given string is empty or not using if-else statements.
// void main(){
//   String input = "Hello, World!";
  
//   if (input.isEmpty) {
//     print("The string is empty.");
//   } else {
//     print("The string is not empty.");
//   }
// }