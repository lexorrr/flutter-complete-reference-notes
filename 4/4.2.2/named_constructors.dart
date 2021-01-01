// 4.2.2 Named constructors
// Named constructors are generally used
// to implement a default behavior the user
// expects from your class. They are the
// only alternative to have multiple constructors
// since Dart has no method overload.
class Fraction {
  int _numerator;
  int _denominator;

  Fraction(this._numerator, this._denominator);

  // denominator cannot be 0 because 0/0 is not defined!
  Fraction.zero() :
      _numerator = 0,
      _denominator = 1;

}

// At this point you can use the named constructor
// in your code like if it were a static method
// call
void main() {
  // "Traditional" initialization
  final fraction1 = Fraction(0, 1);

  // Same thing but with a named constructor
  final fraction2 = Fraction.zero();
}

// In general constructors aren't inherited
// by a subclass so, if they are needed
// across the hierarchy, every subclass
// must implement its own named constructor.
// If we had written a named constructor with a body...
class Fraction2 {
  int? _numerator;
  int? _denominator;

  Fraction2.zero() {
    _numerator = 0;
    _denominator = 1;
  }
}
// ... we would have had to use nullable instance
// variables as constructors' bodies are always
// executed after variables' initialization.