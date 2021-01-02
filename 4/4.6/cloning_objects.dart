// 4.6 Cloning objects
// Even if it's not mentioned in the official
// Dart documentation, there is a standard
// "pattern" to follow when it comes to
// cloning objects. Unlike java, there is no
// clone() method to override but still you
// might need to create deep copies of objects:
// class Person {
//   final String name;
//   final int age;
//   const Person({
//     required this.name,
//     required this.age
//   });
// }

// void main() {
//   const me = const Person(
//     name: "RR",
//     age: 26
//   );
//   const anotherMe = me;
// }
// As you already know, the variable anotherMe
// just holds a reference to me and thus they point
// to the same object. Changes applied to me will also
// reflect on anotherMe. If you want to make deep
// copies in Dart (cloning objects and making them
// independent), this is the way:
class Person {
  final String name;
  final int age;
  const Person({
    required this.name,
    required this.age
  });

  Person copyWith({
    String? name,
    int? age
  }) => Person(
    name: name ?? this.name,
    age: age ?? this.age
  );

  @override
  String toString() => "$name, $age";
}

void main() {
  // This method is called copyWith() by convention and
  // it takes the same number (and name) of parameters required
  // by the constructor. It creates a new, independent copy of the
  // object (a clone) with the possibility to change some parameters:
  const me = const Person(
    name: "RR",
    age: 25
  );

  // Create a deep copy of 'me'.
  final anotherMe = me.copyWith();

  // Create a deep copy of 'me' with a different age.
  final futureMe = me.copyWith(age: 35);

  print("$me");       // RR, 25
  print("$anotherMe"); // RR, 25
  print("$futureMe"); // RR, 35
}
// Both anotherMe and futureMe have no side effects
// on me because the reference is not the same. In
// fact, copyWith() returns a fresh new instance
// by copying internal data. Let's take a look at
// this line:
// name: name ?? this.name,
// Thanks to the ?? operator, if name is null then initialize
// the clone with value of this.name taken from the instance.
// In other words, if you don't pass a custom name to copyWith(),
// by default a copy of this.name is made. Pay attention to generic
// containers and objects in general:
class Skills {}

class Person2 {
  final List<Skills> skills;

  const Person2({
    required this.skills
  });

  Person2 copywith({
    List<Skills>? skills,
  }) => Person2(
    skills: skills ?? this.skills
    );
}
// This code doesn't do what you'd expect because
// List<T>, like any other generic container, is an
// object and not a primitive type. With above code
// you're just copying references and not making copies.
// The correct solution is the following:
// Person2(
//     skills: skiils ?? this.skills.map((p) => p.copywith()).toList();
// );
// In this way you're making a copy of the entire list
// rather than passing a reference. The above code is
// just a one-liner way to iterate on each element of the
// source, making deep copies using copyWith and returning
// a new list. However, when the list is made up of primitive
// types, you could use a shortcut:
class Person3 {
  final List<int> values;
  const Person3({
    required this.values
  });

  Person3 copyWith({
    List<int>? values,
  }) => Person3(
    values: values ?? []..addAll(this.values)
  );
}
// Primitive types are automatically copied so instead
// of using map() (which would be perfectly fine as well)
// we can use addAll() for a shorter syntax. There is no
// difference however because it still iterates on every
// element of the source list. The same example also applies
// to Map<K, V> and Set<K>. To sum it up, what you have to
// keep in mind is:
// 1. Deep copies in Dart are made using the copyWith()
// method. You can give it any other name but you'd better
// follow conventions.
// 2. When making copies, be sure that classes (like generic
// containers) are deep copied using the convenient
// map((x) => x.copyWith()) strategy.
// 3. If you have a list of primitive types (like doubles or
// int) you can use the []..addAll() shortcut. Do this only
// with primitive types.
