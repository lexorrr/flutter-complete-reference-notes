void main() {
  // 3.6.1 The Function type
  // Dart is truly an OOP language because even functions
  // are objects and the type is called... Function!
  // A return type is required while the parameters
  // list is optional.
  // Declare a function
  // bool checkEven(int value) => value % 2 == 0;

  // void main() {
    // Assign a function to a variable
    // bool Function(int) checker = checkEven;

    // Use the variable that represents the function
    // print(checker(8)); // true
  // }

  // If you think it's too verbose, you can use the typical
  // typical type deduction you're getting used to see:
  // void main() {
  //   final checker1 = checkEven;
  //   var checker2 = checkEven;

  //   print(checker1(8)); // true
  //   print(checker2(8)); // true
  // }

  // When you declare a variable you can only write 
  // Function(int) name without the return type. 
  // However, automatic type deduction is generally
  // the best choice because it reduces a lot the 
  // verbosity.
}