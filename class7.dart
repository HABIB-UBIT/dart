// import 'dart:io';

// void main() {
//   Map<String, double> menu = {
//     "Burger": 250,
//     "Pizza": 800,
//     "Pasta": 400,
//     "Fries": 150,
//     "Drink": 100
//   };

//   List<double> prices = []; 
//   bool isLoginSuccessful = false;
//   int attempts = 1;

//   // Login loop
//   while (!isLoginSuccessful) {
//     print("Enter Email:");
//     String email = stdin.readLineSync()!;
//     print("Enter Password:");
//     String password = stdin.readLineSync()!;

//     if (email == "habib123" && password == "habib@123") {
//       print("Login successful");
//       isLoginSuccessful = true;

//       print("\n------ Welcome to Habib's Cafe ------");
//       print("Menu:");
//       menu.forEach((item, price) {
//         print("$item: Rs. $price");
//       });

//       // Ordering loop
//       while (true) {
//         stdout.write("\nWhat would you like to order? ");
//         String? choice = stdin.readLineSync();

//         if (choice != null && menu.containsKey(choice)) {
//           prices.add(menu[choice]!); // add to list
//           print("$choice added to your bill.");
//         } else {
//           print("Item not available in menu.");
//         }

//         stdout.write("Do you need anything else? (yes/no): ");
//         String? more = stdin.readLineSync();
//         if (more != null && more.toLowerCase() == "no") {
//           break;
//         }
//       }

//       // Calculate total
//       double totalBill = 0;
//       for (double price in prices) {
//         totalBill += price;
//       }

//       print("\n------ Bill ------");
//       print("Total: Rs. $totalBill");
//       print("Thank you for visiting!");

//     } else {
//       if (attempts == 3) {
//         print("You have exceeded the maximum number of attempts. Please try again later.");
//         break;
//       } else {
//         print("Invalid email or password. Please try again.");
//         attempts++;
//       }
//     }
//   }
// }




import 'dart:io';
// void main(){
//   print("This is Marksheet Program");
//   print("Enter Your Name");
//   String name = stdin.readLineSync()!;
//   print("Enter your marks");
//   print("Enter your marks in Math");
//   double math = double.parse(stdin.readLineSync()!);
//   print("Enter your marks in English");
//   double english = double.parse(stdin.readLineSync()!); 
//   print("Enter your marks in Urdu");
//   double urdu = double.parse(stdin.readLineSync()!);
//   print("Enter your marks in Physics");
//   double physics = double.parse(stdin.readLineSync()!);
//   print("Your details are as follows:");
//   print("Your name is $name");
//   print("Your Maths marks are $math");
//   print("Your English marks are $english"); 
//   print("Your Urdu marks are $urdu");
//   print("Your Physics marks are $physics");
//   print("Your percentage is:");
//   print(marksheet(math, english, urdu, physics));
// }

// double marksheet(double math, double english, double urdu, double physics) {
//   double obtainedMarks= math + english + urdu + physics;
//   double totalMarks = 400;
//   double percentage = (obtainedMarks / totalMarks) * 100;
//   return percentage;
// } 


void studentMark({required String name, required double math, required double english, required double urdu, required double physics, String? rollNumber}) {
  print("Your details are as follows:");
  print("Your name is $name");
  print("Your Maths marks are $math");
  print("Your English marks are $english");
  print("Your Urdu marks are $urdu");
  print("Your Physics marks are $physics");
  print(english+ math + urdu + physics);
}

void main(){
  print("This is Marksheet Program");
  print("Enter Your Name");
  String name = stdin.readLineSync()!;
  print("Enter your Roll Number (optional, press Enter to skip):");
  String rollNumber = stdin.readLineSync()!;
  print("Enter your marks");
  print("Enter your marks in Math");
  double math = double.parse(stdin.readLineSync()!);
  print("Enter your marks in English");
  double english = double.parse(stdin.readLineSync()!); 
  print("Enter your marks in Urdu");
  double urdu = double.parse(stdin.readLineSync()!);
  print("Enter your marks in Physics");
  double physics = double.parse(stdin.readLineSync()!);
  
  studentMark(name: name, math: math, english: english, urdu: urdu, physics: physics, rollNumber: rollNumber);
}