void main() {

  // 4.1.2 Good practices
  // We strongly recommend to NOT put everything
  // in a single file (or a few ones) for the
  // following reasons:
  // 1. Dealing with thousands of lines of code
  // containing literally everything is not good
  // at all. Maintenance is going to be hard and
  // you're on the good way to become a
  // professional "spaghetti code" writer!
  // 2. If you placed everything in the same file,
  // you'd expose private details of the class.
  // We've seen that private members exists
  // only if classes are put in separated
  // libraries (files).

  // Try to have one file per class or at
  // maximum a few classes that are closely related
  // (they should have the same purpose). When
  // you write a Dart program, in general you have this
  // folder structure:
  // root
  //  | -- lib
  //  |      | -- main.dart
  //  |      | -- routes
  //  |      | -- other_folders
  //  | -- tests
  //  | -- tools
}