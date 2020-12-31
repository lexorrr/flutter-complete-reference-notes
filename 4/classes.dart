import 'dart:math';

void main() {


}

// Up to now you've seen us saying many times
// that Dart is an OOP language and now we're
// finally going to prove it. There are a lot of
// similarities with the most popular programming
// language so you probably are already familiar
// with the concepts.
class Person {
  // Instance variables
  String name;
  String surname;

  // Constructor
  Person(String name, String surname) {
    this.name = name;
    this.surname = surname;
  }
}
// Every object is an instance of a class.
// Dart classes, even if it's not explicitly
// written in the declaration, descend from Object
// and in the next chapter you will see
// the benefits. In Delphi and C# as well,
// any class implicitly derives from Object.

// In any class you have methods (it's the OOP way
// to call functions) which can be public or private.
// The keyword this refers to the current instance of the class.
// Dart has NO method overload so you cannot have more than a function
// with the same name. For this reason, you'll see how
// named constructors come to help.
class Example {
  // Doesn't compile; you have to use different names
  void test(int a) {}
  // void test(double x, double y) {}
}
// You might be able to write this in other
// programming languages because methods
// have the same name but different signature.
// In Dart it's not possible, every function name
// (in the same class) must be unique. Before going
// into the details of classes, look at the
// cascade notation.
class Test {
  String val1 = "One";
  String val2 = "Two";

  int randomNumber() {
    print("Random!");
    return Random().nextInt(10);
  }
}
// Given this class, you have two ways to give
// a value to variables:
// first way, the "classic" one
// test.val1 = "one";
// test.val2 = "two";
// second way, using the cascade operator
// test..val1 = "one"
//     ..val2 = "two";
// It's just a shorthand version you can use
// when there are multiple values of the same
// objects that has to be initialized. You can
// do the same even with methods but the
// returned value, if any, will be ignored.
// For this reason, the reason, the cascade notation
// is useful when calling a series of void methods
// on the same object.
// Test()..randomNumber()
//       ..randomNumber()
//       ..randomNumber();

// In case of nullable values...
// MyClass? test = MyClass();
// test?..one()
//      ..two()
//      ..three();
// ... the cascade notation has to start
// with ?.. in order to be null-checked
// before dereferencing. In Dart there
// cannot be nested classes.
