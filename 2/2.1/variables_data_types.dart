void main() {
  // Variables and data types
  // 2.1 Variables
  // var value = 18; // type inference
  // var myName = "Roxel"; // type inference

  int value = 18; // static type
  String myName = "Roxel"; // static type

  // dynamic type
  // should almost never use
  // dynamic value = 18;
  // dynamic myName = "Roxel";

  // 2.1.1 Initialization
  // always prefer var initialization over static type initialization

  // BAD: hard to read due to nested generic types
  // List<List<Toppings>> pizza = List<List<Toppings>>();
  // for(List<Toppings> topping in pizza) {
  //   doSomething(topping);
  // }

  // GOOD: the reader doesn't have to "parse" the code
  // It's clearer what's going on
  // var pizza = List<List<Toppings>>();
  // for(var topping in pizza) {
  //   doSomething(topping);
  // }

  // late keyword
  // Case 1
  // late List<String> names;

  // if (iWantFriends())
  //   names = friends.getNames();
  // else
  //   names = haters.getNames();

  // Is this a list? I guess so, "People" is plural...
  // but actually the function returns a String!
  // var people = getPeople(true, 100);

  // Ok, this is better
  // String people = getPeople(true, 100);

  // 2.1.2 final
  // final name = "Roxel";
  // name = "Roll"; // 'name' is final and cannot be changed

  // 'final' can also infer types just like 'var'
  // Very popular - Automatic type deduction
  final name = "Roxel";
  // Generally unnecessary - With type annotation
  final String nickName = "RR";

  // the type is deduced by the return statement of the method
  // final rand = getRandomInteger();

  // rand = 0;
  // - doesn't work because the variable is final

  // Assume that the content of the file can't be edited
  // final jsonFile = File('myFile.json').readAsString();
  // checkSyntax(jsonFile);
  // saveToDisk(jsonFile, 'file.json');

  // 2.2 Data types

  // 2.2.1 Numbers
  // Dart has two types of numbers:
  // 'int'. 64-bit at maximum, depending on the platform, integer values.
  // This type ranges from -2^63 to 2^63-1.
  // 'double'. 64-bit double-precision floating point numbers that follow the
  // classic IEEE 754 standard definition.

  // You should always use double or int.
  var a = 1; // int
  var b = 1.0; // double

  int x = 8;
  double y = b + 6;
  num z = 10 - y + a;

  // 7 is a compile-time constant
  const valueA = 7;
  // Operations among constant values are constant
  const valueB = 2 + valueA;

  // From dart 2.1 onwards, the assignment double a = 5 is legal.
  // In 2.0 and earlier versions you were forced to write 5.0, which is a
  // double literal

  // Special notations:
  // 1. The exponential representation of a number, such as
  // var a = 1.35e2 which is the equivalent of 1.35 * 10^2
  // 2. The hexadecimal representation of a number, such as
  // var a = 0xF1A where 0xF1A equals to F1A in base 16 (3866 in base 10).

  // 2.2.1.1 Good practices

  // parse numbers from strings
  // String value = "17";
  // var a = int.parse(value); // String-to-int conversion
  // var b = double.parse(value); // String-to-double conversion
  // var c = int.parse("13", radix: 6); // Converts from 13 base 6

  // numbers to string
  // String v1 = 100.toString(); // v1 = "100";
  // String v2 = 100.123.toString(); // v2 = "100.123";
  // String v3 = 100.123.toStringAsFixed(2); // v3 = "100.12";

  // parse() can fail if the input is malformed ("12_@4.49")
  // use the following solutions(we will cover nullable types later):
  // 1. If the string is not a number, val is null
  // double? val = double.tryParse("12@.3x"); // null
  // double? val = double.tryParse("120.343"); // 120.343
  // 2. The onError callback is called when parsing fails
  // note: parse() is deprecated, you should prefer tryParse()
  // var a = int.parse("1_6", onError: (value) => 0); // 0
  // var a = int.parse("16", onError: (value) => 0); // 16
}