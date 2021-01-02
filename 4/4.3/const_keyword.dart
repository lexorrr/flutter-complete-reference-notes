import 'dart:io';

void main() {
  // 4.3 const keyword
  // The const keyword can be used when
  // you have to deal with compile-time
  // constant values such as strings or
  // numbers. It can automatically deduce
  // the type.
  // type of 'number' is int
  const number = 5;
  // explicitly write the type
  const String name = 'RR';

  const sum = 5.6 + 7.34;

  // It's true that final and const are
  // very similar at first glance and they
  // also share the same syntax style.
  // A very intuitive way to determine which
  // one you can choose is ask yourself: is
  // this value already well defined? is it
  // known at compile time? Let's find out why:
  // 1. final. Use it when the value is not known
  // at compile time because it will be
  // evaluated/obtained at runtime. Common
  // usages are I/O from the disk or HTTP requests.
  // For example, this is how you read a text file
  // from the disk (more on this in A.1):
  final contents = File('myFile.txt').readAsString();

  // const contents = File('myFile.txt').readAsString();
  // ^ does not compile!
  // The compiler doesn't know in advance which is the
  // content of myFile.txt because it will
  // be read only when the program will be running
  // (so after the compilation). For this reason, you can
  // only use final.
  // 2. const. Use it when the value is computed at compile
  // time, for example with integers, doubles, Strings or
  // classes with a constant constructors (more on it
  // in the next section).
  const a = 1;
  // final a = 1 -> it works as well
  // If it works with const, it works also with final
  // because anything that is const is also final.

}

// Instance variables can only be declared as final
// while const can be applied in combination with
// the static keyword.
class Example {
  // OK
  final double a = 0.0;
  // NO, instance variables can only be 'final'
  // const double b = 0.0;

  // OK
  static const double PI = 3.14;
  // OK but without type annotation
  // static const PI = 3.14;
}
// The real power of const comes when combined
// with constructors and, in Flutter, it can lead
// to an important performance boost.

// Variables and methods marked with the static
// modifier are available on the class itself
// and not on instances. In practice it means
// that you can use them without having to create
// an object.
class Example2 {
  static const name = "Flutter";
  static String test() => "Hello, I am $name!";
}
// Usage of Example2
// void main() {
//   final name = Example2.name;
//   final text = Example2.test();
// }
// Both variables are strings and they've
// been retrieved without creating an instance
// of Example; static members belong to the
// "class scope" and you cannot use this
class Example3 {
  int a = 0;
  static void test() {
    // Doesn't compile
    // final version = this.a;
    // print("$version");
  }
}
// Since you don't have to create objects
// to call static methods, this cannot work
// because it refers to the curent instance
// that gets never created.