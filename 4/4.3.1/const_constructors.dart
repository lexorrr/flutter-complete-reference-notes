// 4.3.1 const constructors
// In Dart you can append the const
// keyword in front of a constructor
// only if you're going to initialize
// a series of final (immutable) variables.
// Compiles
class Compiles {
  final int a;
  final int b;
  const Compiles(this.a, this.b);
}

// Does not compile because a is mutable (not final)
class DoesNot {
  // int a;
  // final int b;
  // const DoesNot(this.a, this.b);
}

// If your class only has final variables
// it's said to be an "immutable class" and
// you should really instantiate it with a
// const constructor. The compiler can perform
// some optimizations.
// final example1 = const Compiles(); // (1) constant object
// final example2 = Compiles();       // (2) not a constant object!
// In example (1) we're calling the constant
// constructor but in (2) we're not. Even
// if your class only has constant constructors,
// objects can be instantiated as constants only
// with const keyword. When put in front
// of a collection, such as a list, everything
// inside that container will automatically be const
// (if it is allowed to be constant).
class Test {
  // constant constructor
  const Test();
}

// const List<Test> listConst = [Test(), Test()]; // (1)
// final List<Test> listConst2 = [Test(), Test()]; // (2)
// In (1) everything inside the list is automatically
// "converted" into a const value while in (2) it
// doesn't happen, meaning that the contents of listContent2
// aren't constant. The final keyword in front of a list
// just makes it impossible to change the reference assigned
// to listConst2 but does NOT call the constant constructor
// (while example (1) does)
// Bad
// const List<Test> list1 = [const Test(), const Test()]; // (1)
// Good
// const List<Test> list2 = [Test(), Test()]; // (2)
// You should avoid version (1) because calling const Test()
// is not necessary. Any constant collection initializes its
// children calling their const constructor (if any, otherwise
// a compilation error occurs).