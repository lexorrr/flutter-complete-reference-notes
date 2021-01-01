// 4.2.3 Redirecting constructors
// Sometimes you might have a constructor
// that does almost the same thing already
// implemented by another one. It may be the
// case to use redirecting constructors
// in order to avoid code duplication:
class Fraction {
  int _numerator;
  int _denominator;

  Fraction(this._numerator, this._denominator);
  // Represents '1/2'
  Fraction.oneHalf() : this(1, 2);
  // Represents integers, like '3' which is '3/1'
  Fraction.whole(int val) : this(val, 1);
  // Where Fraction.oneHalf() is just another
  // way to call Fraction(1, 2) but you've
  // avoided code repetition. This feature
  // is very powerful when mixed with named
  // constructors.

}