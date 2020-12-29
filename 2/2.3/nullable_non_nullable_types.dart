void main() {
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
}