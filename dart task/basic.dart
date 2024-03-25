
// void main(){
//   print('hello world');
// }


// void main() {
//   // Declaring and initializing variables
//   int age = 25;
//   double height = 5.8;
//   String name = 'John';
//   bool isStudent = true;

//   // Printing variables
//   print('Name: $name, Age: $age, Height: $height, Student: $isStudent');
// }


// void main() {
//   // For loop example
//   for (int i = 1; i <= 5; i++) {
//     print('Count: $i');
//   }
// }


// void main() {
//   // Calling a function
//   greet('John');
// }

// // Function definition
// void greet(String name) {
//   print('Hello, $name!');
// }


// Define a class
class Person {
  // Fields
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Method
  void greet() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

void main() {
  // Create an object of the class
  var person1 = Person('Alice', 30);

  // Access fields and call methods
  print('Name: ${person1.name}, Age: ${person1.age}');
  person1.greet(); // Output: Hello, my name is Alice and I am 30 years old.
}
