// 4.4 Getters and setters
// When a public variable is declared,
// anyone can freely manipulate it but it may
// not be a good idea because the class partially
// loses control of its members. If we had written
// this...
class Fraction {
  int numerator;
  int denominator;
  Fraction(this.numerator, this.denominator);
}
// ... at a certain point someone could have
// changed the numerator and the denominator
// without any control introducing unexpected
// behaviors due to a wrong internal state.
void main() {
  final frac = Fraction(1, 7);

  frac.numerator = 0;
  frac.denominator = 0;
}
// Having set both numerator and denominator
// to 0 there will be problems at runtime due
// to an invalid division operation. We can fix
// this problem using a getter, which makes the
// variables read-only.
class Fraction2 {
  int _numerator;
  int _denominator;
  Fraction2(this._numerator, this._denominator);

  // Getters are read-only
  int get numerator => _numerator;
  int get denominator {
    return _denominator;
  }
}
// The getter numerator returns an int, _numerator;
// the getter denominator does the same thing with
// an equivalent syntax. Like it happens with methods,
// when there is an one-liner expression or value to
// return, the => (arrow) syntax can be used.
// void main() {
//   final frac = Fraction2(1, 7);
//
//   // Compilation error, numerator is read-only
//   frac.numerator = 0;
//   // No problems here, we can read its value
//   final num = frac.numerator;
// }
// The code is now safer because we can expose
// both numerator and denominator but it's guaranteed
// that they cannot be freely modified. Internally,
// _numerator and _denominator are "safe" because
// they aren't visible from the outside. Just an example,
// we're going to see how to write a setter for the
// denominator. So far it's read-only but with
// a setter it becomes editable:
class Fraction3 {
  int _numerator;
  int _denominator;
  Fraction3(this._numerator, this._denominator);

  // Getters
  int get numerator => _numerator;
  int get denominator => _denominator;

  // setter
  set denominator(int value) {
    if (value == 0) {
      // Or better, throw an exception...
      _denominator = 1;
    } else {
      _denominator = value;
    }
  }
}
// There can be the same name for a setter and
// a getter so that a property can be read/written
// using the same identifier. Setters should be used
// to make "safe edits" on variables; they often contain
// a validation logic which makes sure that the internal
// state of the class doesn't get corrupted.
// void main() {
//   final frac = Fraction3(1, 7);
//
//   var den1 = frac.denominator; // den1 = 7
//   frac.denominator = 0; // the setter chages it to 1
//   den1 = frac.denominator; // den1 = 1
// }
// To sum it up, getters and setters are used to control
// the reading/writing on variables. They are methods
// under the hood but with a "special" syntax that used the
// get and set keywords.