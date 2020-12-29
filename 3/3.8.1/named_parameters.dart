void main() {
  // 3.8.1 Named parameters
  // In the simplest case, a function can have optional
  // parameters whose names must be explicitly written
  // in order to be assigned. Pay attention to null-safety
  // in case you don't plan to give the variables
  // a default value.
  // 1. Declaration 
  // void test({int? a, int? b}) {
  //  print("$a");
  //  print("$b");
  // }
  // 2. Calling
  // void main() {
  //  // Prints '2' and '-6'
  //  test(a: 2, b: -6);
  // }
  // When calling a function with optional parameters,
  // the order doesn't matter but the names of the 
  // variable names must be explicit. For example,
  // you could have called test(b: -6, a: 2); 
  // and it would have worked anyway. When a parameter
  // is missing, the defualt value is given:
  // 1. Declaration 
  // void test({int? a, int? b}) {
  //  print("$a");
  //  print("$b");
  // }
  // 2. Calling
  // void main() {
  //  // Prints '2' and 'null'
  //  test(a: 2);
  // }
  // Calling test(a: 2); initializes only a because b,
  // which is omitted, is set to null by the compiler.
  // null is the default value of nullable types.
  // You can manually give a default value to an 
  // optional named parameter just with a simple assignment:
  // 1. Declaration 
  // void test({int? a, int? b = 0}) {
  //  print("$a");
  //  print("$b");
  // }
  // 2. Calling
  // void main() {
  //  // Prints '2' and '0'
  //  test(a: 2);
  // }
  // Note that b doesn't need to be nullable thanks
  // to the default value. In Dart 2.9 (and lower)
  // nnbd was not enabled so you were able to successfully
  // compile this code, which initializes both a and b to null:
  // 1. Declaration 
  // Dart 2.9 and lower
  // void test({int a, int b}) {
  //  print("$a");
  //  print("$b");
  // }
  // 2. Calling
  // Dart 2.9 and lower
  // void main() {
  //  // Prints 'null' and 'null'
  //  test();
  // }
  // The required modifier, introduced in Dart 2.10 with nnbd,
  // forces an optional parameter to be set. You won't be able 
  // to compile if a required parameter is not used when
  // calling the function.
  // void test({int a = 0, required int b}) {
  //  print("$a");
  //  print("$b");
  // }
  // void main() {
  //  test(a: 5, b: 3); // OK
  //  test(a: 5); // Compilation error, 'b' is required
  // }
  // Even if you had written required int? b you'd have 
  // to assign b anyway because it's required.
  // Version 2.9 of Dart and lower didn't have this keyword:
  // you have to use instead an annotation which just
  // produced a warning (and not a compilation error) by default.
  // Dart 2.9 and lower
  // void test({int a = 0, @required int b}) {...}

  // In flutter, for a better readability, some methods
  // only use named optional params together with
  // required to force the expicit name in the code.
  // You can mix optional named parameters with
  // "classic" ones:
  // 1. Declaration 
  // void test(int a, {int b = 0}) {
  //  print("$a");
  //  print("$b");
  // }
  // 2. Calling
  // void main() {
  //  // Prints '2' and '3'
  //  test(2, b: 3);
  // }

  // Optional parameters must stay at the end
  // of the list.
  // it compiles
  // void test(int a, {int? b}) { }
  // it doesn't compile
  // void test({int? a}, int b) { }
}