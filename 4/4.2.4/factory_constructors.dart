// 4.2.4 Factory constructors
// The factory keyword returns an instance
// of the given class that's not necessarily
// a new one. It can be useful when:
// 1. You want to return an instance of a subclass
// instead of the class itself,
// 2. You want to implement a singleton
// (the Singleton pattern),
// 3. You want to return an instance from a cache.

// Factory constructors are like static methods
// and so they don't have access to this. There cannot
// be together a factory and a "normal" constructor
// with the same name.
class Test {
  static final _objects = <BigObject>[];

  factory Test(BigObject obj) {
    if (!_objects.contains(obj))
      _objects.add(obj);

    return Test._default();
  }

  // This is a private named constructor and
  // thus it can't be called from the outside
  Test._default() {
    // do something...
  }
}
// In the example, since BigObject requires
// a lot of memory and the list is very very
// long, we've declared objects as static.
// This technique is often used to save memory
// and reuse the same object across multiple
// objects of the same type.

// If the list weren't static (just a normal
// instance variable), it would be created every
// time that a Test object is instantiated.
// It'd be a waste of memory an performance
// problem; in this way we're guaranteed that
// there's a unique list created only once.

// In this case the factory constructor is
// essential because it takes care of updating
// the _objects cache. Factories are called
// "normally" like if they were regular constructor:
// Calls the factory constructor
// final a = Test();

// mock BihObject class
class BigObject {}