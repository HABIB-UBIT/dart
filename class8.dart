// class Vehicle{
//   int model= 2006;   // property or attribute
//   String color= "red";  // property or attribute

//   void drive(){
//     print("Vehicle is driving");
//   }  // method or function
// }


// void main(){
//   Vehicle car = Vehicle();    // object or instance of class
//   print("Car model is ${car.model}");  // accessing properties
//   print("Car color is ${car.color}");  // accessing properties
//   car.drive();
  
//   Vehicle bike = Vehicle();
//   print("Bike model is ${bike.model}");
//   print("Bike color is ${bike.color}");
//   bike.drive();
// }


// class Animal {
//       String? name;
//       int? numberOfLegs;
//       int? lifeSpan;
    
//       void display() {
//         print("Animal name: $name.");
//         print("Number of Legs: $numberOfLegs.");
//         print("Life Span: $lifeSpan.");
//       }
//     }

//     void main(){
//         // Here animal is object of class Animal. 
//         Animal animal = Animal();
//         animal.name = "Lion";
//         animal.numberOfLegs = 4;
//         animal.lifeSpan = 10;
//         animal.display();
//     }


// // ########################## Class with Constructor ##########################
// class Vehicle{
//   int model= 2006;   // property or attribute
//   String? color;  // property or attribute

//   Vehicle({required String this.color});  // constructor with required value

//   void drive(){
//     print("Vehicle is driving");
//   }  // method or function
// }


// void main(){
//   Vehicle car = Vehicle(color: "green");    // constructor with required value
//   print("Car model is ${car.model}");  // accessing properties
//   print("Car color is ${car.color}");  // accessing properties
//   car.drive();
  
//   Vehicle bike = Vehicle(color: "blue");    // constructor with required value

//   print("Bike model is ${bike.model}");
//   print("Bike color is ${bike.color}");
//   bike.drive();
// }


// ########################## INHERITANCE ##########################
class Vehicle {
  int model = 2006; // property or attribute
  String color = "red"; // property or attribute

  Vehicle({required this.color}); // constructor with required value

  void drive() {
    print("Vehicle is driving");
  } 
}

class Car extends Vehicle {
  String brand;

  Car({required this.brand, required String super.color});

  void display() {
    print("Car brand: $brand");
    print("Car model: $model");
    print("Car color: $color");
  }
}

class Bike extends Vehicle {
  String type;

  Bike({required this.type, required String super.color});

  void display() {
    print("Bike type: $type");
    print("Bike model: $model");
    print("Bike color: $color");
  }
}

void main() {
  Car carObj = Car(brand: "Toyota", color: "blue");
  carObj.display();
  Bike bikeObj = Bike(type: "Sport", color: "black");
  bikeObj.display();
}