void main() {
  // 3.6 The basics of functions
  // Functions in Dart have the same structure you're used
  // to see in the most popular programming languages
  // and so you'll find this example self-explanatory.
  // You can mark a parameter with final but in practice
  // it does nothing.
  // bool checkEven(int value) {
  //   return value % 2 == 0;
  // }

  // When body of the function contains only one line,
  // you can omit the braces and the return statement
  // in favor of the "arrow syntax".
  // It works with expressions and not work with statements.
  // Arrow syntax
  bool checkEven(int value) => value % 2 == 0;

  // Arrow syntax with method calls
  // bool checkEven(int value) => someOtherFunction(value);

  // Does NOT work
  // bool checkEven(int value) => if (value % 2 == 0) ... ;

  // 1. This function does not return a value
  void test() {}

  // 2. No return type so this function returns dynamic.
  // Don't do this.
  // test() {}

  // If you have a void function with a one-liner body,
  // you can use the arrow syntax.
  // void test() => print("RR");

  // Try to always specify the return type or use void. 
  // Avoid ambiguity; you could avoid the return type
  // for lazyness (you just don't want to write void)
  // but someone else could think you're returning 
  // dynamic on purpose
}