void main() {
  // 2.2.4 Booleans
  bool test = 5 == 0; // false
  bool test2 = !test; // has the opposite value of test

  var oops = 0.0 / 0.0; // evaluates to 'Not a Number' (NaN)
  bool didFail = oops.isNaN;
}