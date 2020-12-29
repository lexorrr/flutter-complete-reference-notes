// 3.11 Using typedefs
// The typedef keyword simply gives another name
// to a function type so that it can be easily 
// reused. Imagine you had to write a callback
// function for many methods.
// void printIntegers(void Function(String msg) logger) {
//   logger("Done.");
// }

// void printDoubles(void Function(String msg) logger) {
//   logger("Done.");
// }
// Alternatively, rather than repeating the declaration
// every time, which leads to code duplication,
// you can give it an alias using the typedef keyword.
typedef LoggerFunction = void Function(String msg);
void printIntegers(LoggerFunction logger) {
  logger("Done int.");
}

void printDoubles(LoggerFunction logger) {
  logger("Done double.");
}

// You are going to encounter this technique
// very often, especially in Flutter, in callbacks
// for classes or methods. For instance, VoidCallback
// is just a function alias for a void function
// taking no parameters.
typedef VoidCallback = void Function();

// In a future version of Dart, probably later than 2.10, 
// typedef will also be used to define new type names.
// At the moment it's not possible, but in the future there will
// be the possibility to compile the following code:
// typedef listMap = List<Map<int, double>>;
// The reason is that generic types can be very verbose
// and so an alias could improve the readability.
// Currently, typedef only works with functions.