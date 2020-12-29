void main() {
  // 3.7 Anonymous functions
  // So far you've only seen named functions such as
  // bool checkEven(int value) where checkEven is the
  // name. Dart gives you the possibility to create
  // nameless functions called anonymous functions.
  // void main() {
  //   bool Function(int) isEven = (int value) => value % 2 == 0;

  //   print(isEven(19)); // false
  // }
  // If you want an anonymous function with no parameters,
  // just leave the parenthesis blank (). Of course
  // you can use final and var to automatically
  // deduce the type.
  // 1. Single line. You can use the arrow syntax when you have one-liner
  // statements. This example describes a function with no parameters
  // that returns a double.
  // final anon = () => 5.8 + 12;
  // 2. Multiple lines. Use brackets and return when you have 
  // to implement a logic that's longer than one line.
  // final anon = (String nickname) {
  //  var myName = "RR";
  //  myName += nickname;
  //  return myName;
  // }

  // Recommended to always write down the type of the 
  // parameter even if it's not required by the
  // compiler. You can decide whether the type has to
  // appear or not. Using final and var is allowed 
  // but it doesn't make much sense.
  // String Function(String) printName = (String n) => n.toUpperCase();
  // String Function(String) printName = (final n) => n.toUpperCase();
  // String Function(String) printName = (var n) => n.toUpperCase();
  // String Function(String) printName = (n) => n.toUpperCase();
  // Any variant compiles with success but none of them
  // is the best option, the decision is up to your
  // descretion. Here is a sample scenario you'll
  // encounter many times in Flutter.
  // 1.
  // void test(void Function(int) action) {
  //  2.
  //  final list = [1, 2, 3, 4, 5];

  //  3.
  //  for(final item in list) 
  //    action(item);
  // }

  // void main() {
  //  4.
  //  test(
  //    // 5.
  //    // (int value) { print("Number $value"); }
  //  );
  // }
  // The action parameter commonly known as callback because
  // it executes an action given from the outside.
  // 1. This function doesn't return a value because
  // of the void. The parameter, called action accepts
  // a void function with a single integer value.
  // 2. It's a simple list of integers.
  // 3. We iterate through the entire list  and, for 
  // each item, we call the function.
  // 4. test(...); is how you normally call a function.
  // 5. This is an anonymous function returning
  // nothing (void) and asking for a single integer
  // parameter.

  // The flexibility of callbacks lies on the fact
  // that you can reuse the same function test()
  // with different implementations. The caller doesn't 
  // care about the body of the anonymous function,
  // it just invokes it as long as the signature matches.
  // The same method (test) outputs different values
  // because anonymous functions have different bodies
  // test( (int value) => print("$value") );
  // test( (int value) => print("${value + 2}") );

  // forEach() example:
  // void main() {
  //  // Declare the list
  //  final list = [1, 2, 3, 4, 5];
  //  // Iterate
  //  list.forEach((int x) => print("Number $x"));
  // }
  // Pay attention because the documentation
  // suggests to avoid using anonymous functions
  // in forEach() calls.

  // A very handy feature you'll see very often
  // it the possibility to put an underscore
  // when one or more parameters of a function
  // aren't needed. For example, in Flutter the
  // BuildContext object is often given as callback param
  // but it's not always essential.
  // builder: (BuildContext context) {
  //  return Text("Hello");
  // }
  // Since the variable context isn't used, but it
  // must be there anyway to match the method signature,
  // you can use an underscore to "hide" it:
  // builder: (_) {
  //  return Text("Hello");
  // }
  // It's less code for you to write and the 
  // reader focuses more on what's really important.
  // In case of multiple values that you don't use,
  // just chain a series of underscores.
  // builder:(_, value, _, _) {
  //  return Text("Hello");
  // }
}