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
  
  // Is this a list? I gues so, "People" is plural...
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
  double? val = double.tryParse("12@.3x"); // null
  double? val = double.tryParse("120.343"); // 120.343
  // 2. The onError callback is called when parsing fails
  // note: parse() is deprecated, you should prefer tryParse()
  // var a = int.parse("1_6", onError: (value) => 0); // 0
  // var a = int.parse("16", onError: (value) => 0); // 16
  
  // 2.2.2 Strings
  
  // No differences between s and t
  var s = "Double quoted";
  var t  = 'Single quoted';
  
  // Interpolate an integer into a string
  var age = 25;
  var myAge = "I am $age years old";
  
  // Expressions need '{' and '}' preceeded by $
  var test = "${25.abs()}";
  
  // This is redundant, don't do it because ${} already calls toString()
  var redundant = "${25.toString()}";
  
  // triple quote
  // Very useful for SQL queries, for example
  var query = """
      SELECT name, surname, age 
      FROM people
      WHERE age >= 18
      ORDER BY name DESC
  """;
  
  // In Dart there isn't a char type because there are only strings.
  // If you want to access particular character of a string you have
  // to use the [] operator:
  // final name = "Roxel";
  // print(name[0]); // prints "R"
  // print(name[2]); // prints "x"
  
  // classic way to concatinate strings
  // var s = 'I am ' + name + ' and I am ' + (23).toString() + ' y.o.';
  // preferred way:
  // var s = 'I am $name. I am ${25} years old';
  
  // in case string is long, omit the + operator
  // Ok
  // var s = 'I am going to the'
  //          'second line';
  // Still ok but '+' can be omitted
  // var s = 'I am going to the' +
  //          'second line';
  
  // Since strings are immutable, making too many concatinations with the 
  // + operator might be inefficient. Use StringBuffer instead.
  // var value = "";
  // for(var i = 0; i < 90000; ++i) {
  //   value += "$i ";
  // }
  // StringBuffer doesn't internally create a new string. The string is 
  // created once at the moment in which toString() is called.
  // var buffer = StringBuffer();
  // for(var i = 0; i < 90000; ++i) {
  //   buffer.write("$i ");
  // }
  // var value = buffer.toString();
  
  // 2.2.3 Enumerated types
  // Also known as "enums", enumerated types are containers for constant
  // values that can be declared with the 'enum' keyword.
  
  Fruits liked = Fruits.Apple;
  var disliked = Fruits.Banana;
  print(liked.toString()); // prints 'Fruits.Apple'
  print(disliked.toString()); // prints 'Fruits.Banana'
  
  // Each item of the enum has an associated number called index starting
  // from zero
  // var a = Fruits.Apple.index; // 0
  // var b = Fruits.Pear.index; // 1
  // var c = Fruits.Grapes.index; // 2
  
  // 2.2.3.1 Good Practices
  /// MEDTHOD 1. Checks if the piece can move in diagonal
  bool diagonalMoveC(Chess item) { return false; }
  
  /// METHOD 2. Checks if a piece can move in diagonal: [item] can only be:
  /// 1. King
  /// 2. Queen
  /// 3. Rook
  /// 4. Bishop
  /// 5. Knight
  /// 6. Pawn
  /// Any other number is not allowed.
  bool diagonalMoveS(int item) { return false; }
  
  // 2.2.4 Booleans
  bool test = 5 == 0; // false
  bool test2 = !test; // has the opposite value of test
  
  var oops = 0.0 / 0.0; // evaluates to 'Not a Number' (NaN)
  bool didFail = oops.isNaN;
  
  // 2.2.5 Arrays
  // An array in Dart is represented by a List<T>
  // in Java:
  // 1. Array
  // double[] test = new double[10];
  // 2. Generic list
  // List<double> test = new ArrayList<>();
  
  // in Dart:
  // 1. Array
  // (no equivalent)
  // 2. Generic list
  // List<double> test = new List<double>();
  
  // Lists are 0-indexed collections and items can be randomly
  // accessed using the [] operator, which will throw
  // an exception if you exceeded the bounds.
  // use var or final
  // final myList = [-3.1, 5, 3.0, 4.4];
  // final value = myList[1];
  
  // A consequence of the usage of a List<T> as container is that
  // the instance exposes many useful methods, typical of collections:
  // .length
  // .add(T value)
  // .isEmpty
  // .contains(T value)
  // ...and much more.
  
  
  
}

// Enum example:
enum Fruits { Apple, Pear, Grapes, Banana, Orange }

enum Chess { King, Queen, Rook, Bishop, Knight, Pawn }
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
  double? val = double.tryParse("12@.3x"); // null
  double? val = double.tryParse("120.343"); // 120.343
  // 2. The onError callback is called when parsing fails
  // note: parse() is deprecated, you should prefer tryParse()
  // var a = int.parse("1_6", onError: (value) => 0); // 0
  // var a = int.parse("16", onError: (value) => 0); // 16
  
  // 2.2.2 Strings
  
  // No differences between s and t
  var s = "Double quoted";
  var t  = 'Single quoted';
  
  // Interpolate an integer into a string
  var age = 25;
  var myAge = "I am $age years old";
  
  // Expressions need '{' and '}' preceeded by $
  var test = "${25.abs()}";
  
  // This is redundant, don't do it because ${} already calls toString()
  var redundant = "${25.toString()}";
  
  // triple quote
  // Very useful for SQL queries, for example
  var query = """
      SELECT name, surname, age 
      FROM people
      WHERE age >= 18
      ORDER BY name DESC
  """;
  
  // In Dart there isn't a char type because there are only strings.
  // If you want to access particular character of a string you have
  // to use the [] operator:
  // final name = "Roxel";
  // print(name[0]); // prints "R"
  // print(name[2]); // prints "x"
  
  // classic way to concatinate strings
  // var s = 'I am ' + name + ' and I am ' + (23).toString() + ' y.o.';
  // preferred way:
  // var s = 'I am $name. I am ${25} years old';
  
  // in case string is long, omit the + operator
  // Ok
  // var s = 'I am going to the'
  //          'second line';
  // Still ok but '+' can be omitted
  // var s = 'I am going to the' +
  //          'second line';
  
  // Since strings are immutable, making too many concatinations with the 
  // + operator might be inefficient. Use StringBuffer instead.
  // var value = "";
  // for(var i = 0; i < 90000; ++i) {
  //   value += "$i ";
  // }
  // StringBuffer doesn't internally create a new string. The string is 
  // created once at the moment in which toString() is called.
  // var buffer = StringBuffer();
  // for(var i = 0; i < 90000; ++i) {
  //   buffer.write("$i ");
  // }
  // var value = buffer.toString();
  
  // 2.2.3 Enumerated types
  // Also known as "enums", enumerated types are containers for constant
  // values that can be declared with the 'enum' keyword.
  
  Fruits liked = Fruits.Apple;
  var disliked = Fruits.Banana;
  print(liked.toString()); // prints 'Fruits.Apple'
  print(disliked.toString()); // prints 'Fruits.Banana'
  
  // Each item of the enum has an associated number called index starting
  // from zero
  // var a = Fruits.Apple.index; // 0
  // var b = Fruits.Pear.index; // 1
  // var c = Fruits.Grapes.index; // 2
  
  // 2.2.3.1 Good Practices
  /// MEDTHOD 1. Checks if the piece can move in diagonal
  bool diagonalMoveC(Chess item) { return false; }
  
  /// METHOD 2. Checks if a piece can move in diagonal: [item] can only be:
  /// 1. King
  /// 2. Queen
  /// 3. Rook
  /// 4. Bishop
  /// 5. Knight
  /// 6. Pawn
  /// Any other number is not allowed.
  bool diagonalMoveS(int item) { return false; }
  
  // 2.2.4 Booleans
  bool test = 5 == 0; // false
  bool test2 = !test; // has the opposite value of test
  
  var oops = 0.0 / 0.0; // evaluates to 'Not a Number' (NaN)
  bool didFail = oops.isNaN;
  
  // 2.2.5 Arrays
  // An array in Dart is represented by a List<T>
  // in Java:
  // 1. Array
  // double[] test = new double[10];
  // 2. Generic list
  // List<double> test = new ArrayList<>();
  
  // in Dart:
  // 1. Array
  // (no equivalent)
  // 2. Generic list
  // List<double> test = new List<double>();
  
  // Lists are 0-indexed collections and items can be randomly
  // accessed using the [] operator, which will throw
  // an exception if you exceeded the bounds.
  // use var or final
  // final myList = [-3.1, 5, 3.0, 4.4];
  // final value = myList[1];
  
  // A consequence of the usage of a List<T> as container is that
  // the instance exposes many useful methods, typical of collections:
  // .length
  // .add(T value)
  // .isEmpty
  // .contains(T value)
  // ...and much more.
  
  // 2.3 Nullable and Non-nullable types
  // Starting from Dart 2.10, variables will be non-nullable by default (nnbd).
  // Trying to access a variable before it's been assigned will cause a
  // compilation error.
  // int value;
  // print("$value"); // Illegal, doesn't compile
  
  // If you dont't initialize a variable, it's automatically set to null
  // but that's an error because Dart has non-nullability enabled by default.
  // Initializa the variable as soon as it's declared.
  // 1.
  // int value = 0;
  // print("$value");
  // 2. int value;
  // value = 0;
  // print("$value");
  
  // OK - assignment made before the usage
  // int value;
  // value = 0;
  // print("$value");
  
  // ERROR - usage made before assignment
  // int value;
  // print("$value");
  // value = 0;
  
  // You wont have the need to do this:
  // String name = "Roxel";
  // void main() {
  //  if (name != null) {
  //    print(name);
  //  }
  // }
  
  // In Dart you can also declare nullable types
  // int? value;
  // print("$value"); // Legal, it prints 'null'
  
  // Non-nullable version - default behavior
  // int value = 0;
  // print("$value"); // prints '0'
  // Nullable version - requires the ? at the end of the type
  // int? value;
  // print("$value"); // prints 'null'
  
  // Nullable types that support the index operator [] need to be called
  // with the ?[] syntax. null is returned if the variable is also null.
  // String? name = "Roxel";
  // String? first = name?[0]; // first = 'R'
  // String? name;
  // String? first = name?[0]; // first = 'null'
  
  // Stick to the defaults (nnbd) as much as possible as they are safer.
  // Here are the only possible conversions between nullable and
  // non nullables:
  // 1. When you;re sure that a nullable expression isn't null, you can
  // add a ! at the end to convert it to the non-nullable version.
  // int? nullable = 0;
  // int notNullable = nullable!;
  // The 1 (called "bang operator") converts a nullable value (int?)
  // into a non-nullable value (int) of the same type. An exception is
  // thrown if the value is actually null.
  // int? nullable;
  // An exception is thrown
  // int notNullable = nullable!;
  
  // 2. If you need to convert a nullable variable into a non-nullable subtype,
  // use the typecast operator 'as':
  // num? value = 5;
  // int otherValue = value as int; // int otherValue = value! wont work
  // because the bang operator works only when the type is the same.
  
  // 3. Even if it isn't a real conversion, the operator ?? can be used
  // to produce a non-nullable value from a nullable one.
  // int? nullable = 10;
  // int nonNullable = nullable ?? 0; // If the member on the left (nullable)
  // is non-null, return its value, otherwise, evaluate and return
  // the member of the right (0).
  
  // Remember that when you're working with nullable values, the member
  // access operator (.) is not available. Instead, you have to use the 
  // null-aware member access operator (?.):
  // double? pi = 3.14;
  // final round1 = pi.round(); // No
  // final round2 = pi?.round(); // Ok
  
  // 2.4 Data type operators
  // In Dart expressions are built using operators, such as + and - 
  // on primitive data types. The language also supports operator overloading
  // for classes.
  
  // 2.4.1 Arithmetic operators
  // Symbol    Meaning                                  Example
  // +         Add two values                           2 + 3 // 5
  // -         Subtract two values                      2 - 3 // -1
  // *         Multiply two values                      6 * 3 // 18
  // /         Divide two values                        9 / 2 // 4.5
  // ~/        Integer division of two values           9 ~/ 2 // 4
  // %         Remainder (modulo) of an int division    5 % 2 // 1
  
  // Prefix an postfix increment or decrement work as you're used
  // to see in many languages.
  // int a = 10;
  // ++a; // a = 11
  // a++; // a = 12
  // int b = 5;
  // --b; // b = 4
  // b--; // b = 3
  // int c = 6;
  // c += 6; // c = 12
  // 1. in the prefix version (++x) the value is first incremented
  // and then "returned"
  // 2. in the postfix version (x++) the value is first "returned"
  // and then incremented
  
  // 2.4.2 Relational operators
  // Equality and relational operators are used in boolean expression, 
  // generally inside if statements or as a stop condition of a
  // while loop.
  // Symbol    Meaning                                  Example
  // ==        Equality test                            2 == 6
  // !=        Inequality test                          2 != 6
  // >         Greater than                             2 > 6
  // <         Smaller than                             2 < 6
  // >=        Greater or equal to                      2 >= 6
  // <=        Smaller or equal to                      2 <= 6
  
  // Testing the equality of two objects a and b always happens
  // with the == operator because, unlike Java or C#, there
  // is no equals() method. In general here's how the == works:
  // 1. If a or b is null, return true if both are null or false
  // if only one is null. Otherwise...
  // 2. ... return the result of == according with the logic you've
  // defined in the method override.
  // Of course, == works only with objects of the same type.
  
  // 2.4.3 Type test operators
  // They are used to check the type of an object at runtime.
  // Symbol    Meaning                                  Example
  // as        Cast a type to another                   obj as String
  // is        True if the object has a certain type    obj is double
  // is!       False if the object has a certain type   obj is! int
  
  // Let's say you've defined a new type like class Fruit {}.
  // You can cast an object to Fruit using the as operator like this:
  // (grapes as Fruit).color = "Green";
  // The code compiles but it's unsafe: if grapes was null or if it
  // wasn't a Fruit, you would get an exception. It's always a good practice
  // checking whether the cast is doable before doint it:
  // if (grapes is Fruit) {
  //  (grapes as Fruit).color = "Green";
  // }
  
  // Actually, the compiler is smart enough to understand that you're doing
  // a type check with is and it can do a smart cast.
  // if (grapes is Fruit) {
  //  grapes.color = "Green";
  // }
  
  // 2.4.4 Logical operators
  // When you have to create complex conditional expressions you can
  // use the logical operators:
  // Symbol           Meaning
  // !expr            Toggles true to false and vice versa
  // expr1 && expr2   Logical AND (true of both sides are true)
  // expr1 || expr2    Logical OR (true if at least one is true)
  
  // 2.4.5 Bitwise and shift operators
  // You'll never use these operators unless you're doing some low level
  // data manipulation but in Flutter this never happens.
  // Symbol           Meaning
  // a & b            Bitwise AND
  // a | b            Bitwise OR
  // a ^ b            Bitwise XOR
  // ~a               Bitwise complement
  // a >> b           Right shift
  // a << b           Left shift
  
}

// Enum example:
enum Fruits { Apple, Pear, Grapes, Banana, Orange }

enum Chess { King, Queen, Rook, Bishop, Knight, Pawn }
