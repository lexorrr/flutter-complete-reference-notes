// 4.2.5 Instance variables initialization
// As we've already seen, "normal" non-nullable
// variables have to be initialized either via
// initializing formal or initializer list.
// In any other case they're set to null
// because constructor bodies run after the instance
// initialization phase.
// Initializing formal
class Example {
  int _a; // Ok - 'a' initialized by the constructor
  Example(this._a);
}

class Example2 {
  // int _a; // Error - 'a' not initialized
  // Example2(int a) {
  //   _a = a;
  // }
}

// If variables aren't initialized
// immediately and you want them to be
// non-nullable, you can use the late
// modifier. It works like a "lazy
// initialization" because with this
// keyword you allow a non-nullable
// to be initialized later (but anyway
// before it gets accessed for the first
// time ever).
// For Dart 2.10 and earlier versions, 'late'
// does not exist so just remove it.
// Not initialized variables will be set
// to 'null' by default.
class Example3 {
  late int a;

  void printExample() {
    a = 5;
    print("$a");
    a = 2;
    print("$a");
  }
}

// If you tried to use the variable before
// it gets assigned for the first time,
// you would get a compilation error. Always
// be sure to have the initialization done before
// using it.
class Example4 {
  late int a;

  void printExample() {
    // Compilation error
    print("$a");
    a = 5;
  }
}
// Using a like above causes an error becuase
// it's accessed before being initialized.
// There's also the possibility to declare
// late final variable which behaves in the same
// way but with the only exception that it
// can be assigned only once.class
class Example5 {
  late final int a;

  void printExample() {
    // Compilation error
    a = 5;
    print("$a");
    // a = 6; <-- This would be an error
  }
}