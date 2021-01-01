// 4.2.6 Good practices
// Following what the official documentation
// suggests, here's some tips you should
// consider while writing constructors for
// your classes:
// 1. Prefer using the "initialize formal" approach
// rather than initializing variables directly
// in the body of the constructor. Doing so,
// you'll avoid the usage of nullable types or late.
// 2. When you use the initializing formal, the types
// of the variables are deduced automatically
// to reduce the verbosity. Omit the types because
// they're useless.
// Ok but useless
// Constructor(String this.a, double this.b) {}
// OK
// Constructor(this.a, this.b);
// 3. When you have an empty constructor with no
// body, use the semicolon instead of the empty
// brackets.
// Bad
// Constructor(this.a, this.b) {}
// Good
// Constructor(this.a, this.b);
// 4. Do not use the new keyword when
// creating new instances of objects. In modern
// Dart and Flutter code, new never appears.
// 5. We recommend using redirecting constructors
// to avoid code duplication. It makes
// maintenance easier.
// 6. Try not to use the late keyword because it could
// lead to hard maintenance (you'd have to manually
// keep an eye on the initialization of variables).
// whenever possible, initialize variables
// as soon as they are declared.
// 7. In the second part of the book we'll show
// a case where late or late final are required.
// They'll be used to initialize values inside
// the state of a Widget.
// class Example extends State {
//   late int value;
//
//   @override
//   void initState() {
//     super.initState();
//     value = 0;
//   }
// }
// In short, subclasses of State cannot define
// a constructor and you have to perform the
// initialization of the variables in the initState()
// method. In order to do this, late is essential.

// The syntax for private constructors in Dart
// might seem a bit weird at first. Generally,
// a private constructor is used in conjunction
// with a factory that returns a subtype or an
// instance of the actual object with certain
// criteria.
class Example {
  final a;
  // Private constructor
  Example._(this.a);

  factory Example(int value) {
    final c = value * 3;
    return Example._(c);
  }
}
// A private constructor is declared using
// the ._() notation. In the example, the class
// can still be instantiated but only because
// we've defined a factory. In this case...
// final ex = Example(10);
// ... we're not calling the "normal" constructor
// (because it's package private) but instead
// the factory one.