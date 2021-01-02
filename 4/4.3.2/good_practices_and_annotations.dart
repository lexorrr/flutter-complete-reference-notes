// 4.3.2 Good practices and annotations
// If you know that variables in your class
// will never change, you really should make them
// final and use a const constructor. As we've
// already said, constant constructors play a very
// important role in Flutter because they allow
// "caching" on instances.

// Don't get "obsessed" by immutable classes
// and const constructors because you can't simply
// use them in every situation. If your instance variables
// cannot be final that's perfectly fine; the
// environment and the compiler are very powerful
// and your final product won't suffer of speed
// degradations due to lack of immutability.

// Any class with a constant constructor can be
// used as annotation: they're are generally put
// before the name of a class or method. An annotation
// is preceded by the "at" sign (@). In the next section,
// we will see that overriding methods is usually
// done in the following way:
// class MySubclass extends SuperClass {
//   @override
//   void defineMethod() {}
// }
// The @override annotation does nothing in practice:
// it just tells the developer that defineMethod has
// been overridden. If you looked at how the override
// annotation is declared in the Dart SDK, you'll
// find simply the following:
// This class has a constant constructor and so it can be used as annotation
class _Override {
  const _Override();
}

// the actual "@override" annotation
const Object override = _Override();
// The class has been made private (_Override)
// because its instantiation is useless as it
// does nothing. However, thanks to the const
// Object override variable being public, there's
// an "alias" of the _Override class which can be
// used as annotation. They're generally used for:
// 1. reminding the developer about something. such
// as in the case of @override;
// 2. before Dart 2.10, the @required annotation was used
// by the IDE to bring the developer's attention
// to the fact that a named optional parameter is required;
// 3. some packages, such as json_serializable we're going
// to cover in chapter 15, rely on annotations to add
// additional information about a class, a method or
// a member. Annotations can be used to pass data
// to code generation tools.class

// Annotations can also have parameters but in this
// case you aren't doing the above "trick" of
// declaring a global variable exposing a private class.
// Just create a normal class, with a const constructor
// and use it as follows:
// Use this as annotation but it takes a param
class Something {
  final int value;
  const Something(this.value);
}

@Something(10)
class Test {}