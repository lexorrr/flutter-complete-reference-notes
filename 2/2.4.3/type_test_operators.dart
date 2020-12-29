void main() {
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
}