
class Fraction {

  int? _numerator;
  int? _denominator;

  Fraction(int numerator, int denominator) {
    _numerator = numerator;
    _denominator = denominator;
  }
}
// In this case variables must be nullables
// because they are initialized, by defualt,
// to null. The body of the constructor
// is called after the variables initialization.
// If you want to get rid of nullables there are
// two options:
// 1. Declare variables as late final to tell
// the compiler to not emit an error.
// They are going to be initialized later
// but anyway before being accessed for the
// first time ever.
class Fraction2 {
  late final int _numerator;
  late final int _denominator;

  Fraction2(int numerator, int denominator) {
    _numerator = numerator;
    _denominator = denominator;
  }
}
// Because of the final modifier, variables
// cannot be changed anymore after their
// initialization. You could have only used
// late but variables would be mutable then:
class Fraction3 {
  late int _numerator;
  late int _denominator;

  Fraction3(int numerator, int denominator) {
    _numerator = numerator;
    _denominator = denominator;
  }
}
// In both cases, members are NOT initialized immediately
// because the body of the constructor is executed
// after the variable initialization phase.

// 2. The Dart team recommends going for the
// "initializing formal" approach as it's
// more readable and it initializes the
// variables immediately.
class Fraction4 {
  int _numerator;
  int _denominator;

  Fraction4(this._numerator, this._denominator);
}
// It's just syntactic sugar to immediately
// assign values to members. In this case,
// variables initialization is executed first
// so no need to use nullable types or late.
// This kind of initialization happens before
// the execution of the constructors body.

// Keep in mind that constructor bodies
// are executed after the variable initialization
// phase. The second approach is very common and
// you should get used to it, even if your class
// only declares final fields.
class Fraction5 {
  final int _numerator;
  final int _denominator;

  Fraction5(this._numerator, this._denominator);
}

// If your class doesn't define a constructor,
// the compiler automatically adds a defualt
// constructor with no parameters and an empty
// body. With the "initializing formal" you can
// still declare a body to perform additional
// setup for the class.
class Fraction6 {
  final int _numerator;
  final int _denominator;
  late final double _rational;

  Fraction6(this._numerator, this._denominator) {
    _rational = _numerator / _denominator;
    // doSomethingElse();
  }
}

// You could only write Fraction(this._numerator)
// to initialize exclusively _numerator but then
// _denominator would be set to null by the compiler.
// Keep in mind that you cannot have named optional
// parameters starting with an underscore.
// Doesn't compile
// Fraction({this._numerator, this._denominator});
// However, you can have positional parameters starting
// with an underscore:
// Ok, but pay attention to non-nullability
// Fraction([this._numerator, this._denominator]);