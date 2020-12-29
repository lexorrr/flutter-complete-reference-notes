void main() {
  // 3.9 Nested functions
  // The language allows you to declare functions inside other
  // functions visible only within the scope in which
  // they're declared. In other words, nested functions
  // can be called only inside the function containing
  // them; if you try from the outside, you'll get a compilation
  // error.

  // This example shows how you can nest two functions,
  // where testInner() is called "outer function"
  // and randomValue() is called "inner function".
  // void testInner(int value) {
    // Nested function
    // int randomValue() => Random.nextInt(10);

    // Using the nested function
    // final number = value + randomValue();
    // print("$number");
  // }
  // As we've just seen, functions are types in Dart
  // so a "nested function" is nothing more than
  // a Function type assignment. Given this declaration,
  // we're able to successfully compile the following:
  // void main() {
  //  // testInner internally calls randomValue
  //  testInner(20);
  // }
  // An error is going to occur if we try to directly call 
  // randomValue from a place that's not inside the scope
  // of its outer function.
  // void main() {
  //  // Compilation error
  //  var value = randomValue();
  // }

  // 3.10 Good practices
  // 1. Older versions of Dart allow the specification of 
  // a default value using a colon (:); don't do it,
  // prefer using = . In both cases, the code compiles
  // successfully.
  // Good
  // void test([int a = 0]) {}
  // Bad 
  // void test([int a: 0]) {}
  // The colon initialization might be removed in the future.
  // 2. When no default values are given, the compiler
  // already assigns null to the variable so you don't
  // have to explicitly write it.
  // Good
  // void test({int? a}) {}
  // Bad
  // void test({int? a = null}) {}
  // In general, you should never initialize nullables with null because
  // the compiler already does that by default.

  // Dart gives the possibility to write only the name
  // of a function, with no parenthesis, and automatically
  // pass proper parameters to it. It's a sort of "method reference".
  // We are going to convince you with this example:
  // void showNumber(int value) {
  //  print("$value");
  // }
  // void main() {
  //  // List of values
  //  final numbers = [2, 4, 6, 8, 10];

  //  // Good
  //  // numbers.forEach(showNumber);

  //  // Bad
  //  // numbers.forEach((int val) { showNumber(val); });
  // }
  // The bad example compiles but you can avoid that
  // syntax in favor of a shorter one.
  // 1. The forEach() method asks for a function with a
  // single integer parameter and no return type (void).
  // 2. The showNumber() function accepts an integer as
  // parameter and returns nothing (void).
  // The signatur match! If you pass the function name directly
  // inside the method, the compiler automatically initializes
  // the parameters. This tear-off is very useful and you might
  // already have seen it somewhere else under the name of 
  // "method reference" (Java).
}