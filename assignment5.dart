// // Q.1: Create a list of names and print all names using list.
// void main(){
//   List <String> names= ["Alice", "Bob", "Charlie"];
//   for (String name in names) {
//     print(name);
//   }
// }

// // Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
// void main(){
//   List <String> days = [];
//   days.add("Monday");
//   days.add("Tuesday");
//   days.add("Wednesday");
//   days.add("Thursday");
//   days.add("Friday");
//   days.add("Saturday");
//   days.add("Sunday");

//   print(days);
// }

// // Q.3: Create a list of Days and remove one by one from the end of list.
// void main(){
//   List <String> days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
  
//   while (days.isNotEmpty) {
//     print("Removing: ${days.last}");
//     days.removeLast();
//   }
//   print("All days removed. Current list: $days");
// }

// // Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.
// void main(){
//   List<int> numbers = [34, 67, 23, 89, 12, 45];
  
//   int smallest = numbers[0];
//   int greatest = numbers[0];

//   for (int number in numbers) {
//     if (number < smallest) {
//       smallest = number;
//     }
//     if (number > greatest) {
//       greatest = number;
//     }
//   }

//   print("Smallest number: $smallest");
//   print("Greatest number: $greatest");
// }

// //Q.10: Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates. The order of elements in the new list should be the same as in the original list.

// void main(){
//   List<String> originalList = ['apple', 'banana', 'apple', 'orange', 'banana', 'grape'];
//   List<String> uniqueList = [];

//   for (String item in originalList) {
//     if (!uniqueList.contains(item)) {
//       uniqueList.add(item);
//     }
//   }print("List without duplicates: $uniqueList");
// }


// //Q 11: Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the first n elements from the original list.
// void main() {
//   List<String> originalList = ['apple', 'banana', 'orange', 'grape', 'mango'];
//   int n = 3;

//   List<String> newList = [];

//   // Make sure n is not more than the list length
//   if (n <= originalList.length) {
//     for (int i = 0; i < n; i++) {
//       newList.add(originalList[i]);
//     }
//     print("First $n elements: $newList");
//   } else {
//     print("Error: n is greater than the list length.");
//   }
// }

// // Q.12: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. The original list should remain unchanged.
// void main(){
//   List<String> originalList = ['apple', 'banana', 'orange', 'grape', 'mango'];
//   List<String> reversedList = [];

//   for (int i = originalList.length - 1; i >= 0; i--) {
//     reversedList.add(originalList[i]);
//   }

//   print("Original list: $originalList");
//   print("Reversed list: $reversedList");
// }

// //Q.13: Implement a code that takes in a list of integers and returns a new list containing only the unique elements from the original list. The order of elements in the new list should be the same as in the original list.
// void main(){
//   List<int> originalList = [1, 2, 3, 2, 4, 5, 1, 6];
//   List<int> uniqueList = [];

//   for (int item in originalList) {
//     if (!uniqueList.contains(item)) {
//       uniqueList.add(item);
//     }
//   }

//   print("Original list: $originalList");
//   print("Unique elements: $uniqueList");
// }