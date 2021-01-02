// 4.5 Operators overload
// When you deal with primitive types you use
// operators very often: 5 + 8 is a sum between
// two int types happening with the + operator.
// We are going to do the same with Fraction class.
class Fraction {
  final int _numerator;
  final int _denominator;
  Fraction(this._numerator, this._denominator);

  Fraction operator+(Fraction other) =>
      Fraction(
        _numerator * other._denominator +
          _denominator * other._numerator,
        _denominator * other._denominator
      );

  // Fraction operator-(Fraction other) => ...

  // Fraction operator*(Fraction other) => ...

  // Fraction operator/(Fraction other) => ...
}
// Operator overloading gives the possibility
// to customize the usage of operators in your
// classes. We have overloaded the + operator
// so that we can easily sum two fractions instead
// of having to create an add(Fraction value)
// method, like it happens with Java.
void main() {
  // 2/5
  final frac1 = Fraction(2, 5);
  // 1/3
  final frac2 = Fraction(1, 3);

  // 2/5 + 1/3 = 11/5
  final sum = frac1 + frac2;
}
// They work like normal methods with the only
// exception that the name must be in the form
// operator{sign} where sign is a supported
// Dart operator:
// 1. Arithmetic operators like +, -, *, or /.
// 2. Relational operators such as >=, <=, > or <.
// 3. Equality operators like != and ==
// And many more. There are no restrictions on the
// types you can handle with the operators, meaning
// that we could also sum fractions with integers:
// operator+(int other). You cannot overload the same
// operator more than once in the same class.