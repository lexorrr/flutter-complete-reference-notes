// 4.5.1 callable classes
// There is a special call() method which
// is very closely related to an operator
// overload because it allows classes to
// be called like if they were functions
// with the () operator.

// You can give call() as many parameters as
// you want as there are no restrictions on their
// types. The function can return something or
// it can simply be void.

// Let's give a look at this example.
class Example {
  double call(double a, double b) => a + b;
}

void main() {
  final ex = Example();       // 1
  final value = ex(1.3, -2.2); // 2.

  print("$value");
}
// 1. Classic creation of an instance of the class
// 2. The object ex can act like if it were a function.
// The call() method allows an object to be treated
// like a function.

// Any class that implements call() is said to be
// a callable class. In Dart, everything is an object
// and you've seen in 3.6.1 that even functions are
// objects. You can now understand why with the following
// example:
// void test(String something) {
//   print(something);
// }
// This is a typical void function asking for a single
// parameter. Actually, the above code can be converted
// into a callable class that overrides call() returning
// nothing and asking for a string.
// Written inside 'my_test.dart' for example
/* start my_test.dart */
class _Test {
  const _Test();

  void call(String something) {
    print(something);
  }
}

const test = _Test();
/* end my_test.dart */

// import 'my_test.dart';
// void main () {
//   test("Hello");
// }
// The function is nothing more than a package private
// class that overrides call() with a certain signature.
// thanks to const test = _Test(); in the last line we're
// "hiding" the class and exposing a callable object to be
// used as function.
