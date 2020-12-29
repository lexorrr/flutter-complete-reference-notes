void main() {
  // 3.8.2 Positional parameters
  // You can also use optional parameters without being
  // forced to write down the name. Optional positional
  // parameters follow the same rules we've just seen
  // for named params but instead of using curly braces ({ })
  // they're declared with square brackets ([ ]).
  // 1. Declaration 
  // void test([int? a, int? b]) {
  //  print("$a");
  //  print("$b");
  // }
  // 2. Calling
  // void main() {
  //  // Prints '2' and '-6'
  //  test(2, -6);
  // }
}