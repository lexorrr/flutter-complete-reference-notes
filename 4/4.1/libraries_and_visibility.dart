import 'fraction.dart';

void main() {
  // 4.1 Libraries and visibility
  // In the Dart world, when you talk about
  // "library" you're referring to the code
  // inside a file with the .dart extension.
  // If you want to use that particular library,
  // you have to reference its content with
  // the import keyword.

  // You could have written 'new Fraction(1, 2)' but
  // starting from Dart 2.0 'new' is optional
  final frac = Fraction(1, 2);

  // The import directive accepts a string which must contain
  // a particular scheme. For built-in libraries
  // you have to use the dart: prefix followed bu the library
  // name:
  // import 'dart:math';
  // import 'dart:io';
  // import 'dart:html';

  // Everything else that doesn't belong to the Dart SDK,
  // such as a custom library created by you
  // or another developer in the community, must be
  // prefixed by package.
  // import 'package:fraction.dart';
  // import 'package:path/to/file/library.dart';

  // It could happen that two different libraries
  // have implemented a class with the same name;
  // the only possible technique to avoid ambiguity
  // is called "library aliases". It's a way to reference
  // the contents of a library under a different
  // name.
  // Contains a class called 'MyClass'
  // import 'package:libraryOne.dart';
  // Also contains a class called 'MyClass'
  // import 'package:libraryTwo.dart' as second;

  // Uses MyClass from libraryOne
  // var one = MyClass();

  // Uses MyClass from libraryTwo.
  // var two = second.MyClass();

  // You can selectively import or exclude types
  // using the show and hide keywords:
  // 1. import 'package:libraryOne.dart' show MyClass; Imports
  // only MyClass and discards all the rest.
  // 2. import 'package:libraryTwo.dart' hide MyClass; Imports
  // everything except MyClass.
}

