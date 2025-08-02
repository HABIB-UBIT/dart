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

// //Q.9: Given a list of integers, write a dart code that returns the maximum value from the list.
// void main(){
//   List<int> numbers = [10, 20, 5, 30, 15];
  
//   int maxValue = numbers[0];

//   for (int number in numbers) {
//     if (number > maxValue) {
//       maxValue = number;
//     }
//   }

//   print("Maximum value in the list: $maxValue");
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

// //Q.14: Write a Dart code that takes in a list of integers and prints a new list with the elements sorted in ascending order. The original list should remain unchanged.
// void main(){
//   List<int> originalList = [34, 12, 5, 67, 23];
//   List<int> sortedList = List.from(originalList); 

//   sortedList.sort(); 

//   print("Original list: $originalList");
//   print("Sorted list: $sortedList");
// }


// //Q.15: Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the positive numbers
// void main(){
//   List<int> numbers = [-10, 5, -3, 8, 0, -1, 12];
//   List<int> positiveNumbers = [];
//   for (int number in numbers) {
//     if (number >= 0) {
//       positiveNumbers.add(number);
//     }
//   }
//   print("Positive numbers: $positiveNumbers");
// }

// //Q.16: Implement a Dart code that uses the where() method to filter out odd numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the even numbers.
// void main(){
//   List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
//   List<int> evenNumbers = [];

//   for (int number in numbers) {
//     if (number % 2 == 0) {
//       evenNumbers.add(number);
//     }
//   }

//   print("Even numbers: $evenNumbers");
// }

// //Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
// void main(){
//   Map<String, dynamic> person={
//     "name":"Habib",
//     "phone":"0301",
//     "age":23
//   };
    
//   var filteredKeys = person.keys.where((key) => key.length == 4);
//   print("Keys with length 4: $filteredKeys");
// }

// //Q.6: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency.
// void main(){
//   Map<String, dynamic> world = {
//     "Pakistan": {
//       "capitalCity": "Islamabad",
//       "currency": "PKR",
//       "language": "Urdu"
//     },
//     "USA": {
//       "capitalCity": "Washington, D.C.",
//       "currency": "USD",
//       "language": "English"
//     },
//     "Japan": {
//       "capitalCity": "Tokyo",
//       "currency": "JPY",
//       "language": "Japanese"
//     }
//   };

//   print(world["Pakistan"]); 
// }