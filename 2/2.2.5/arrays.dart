void main() {
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