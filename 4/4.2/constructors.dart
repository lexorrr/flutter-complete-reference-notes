import 'myclass.dart';

void main() {

  // 4.2 Constructors
  // The constructors is a special function with
  // the same name of the class and doesn't carry
  // a return type. To invoke it, the syntax is the
  // most common one you can imagine:
  final myObject = new MyClass();
  // Starting from Dart 2, the keyword new can
  // be omitted. It's something you're always
  // going to do, especially while writing
  // Flutter apps.
  final myObject2 = MyClass();

  // As example, in this chapter we are creating
  // a library to work with fractions and rational
  // numbers. To get started, there's the need to create
  // a file called fraction.dart.
}