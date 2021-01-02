// 4.4.1 Good practices
// Our recommendation is to keep the body
// of getters and setters as short as possible
// in benefit of code readability. You shouldn't
// put any loop that might slow down the assignment/retrieval
// of a value. The official documentation also has something
// to say:
// 1. When a variable has to be both public and read-only,
// just mark it as final without associating a getter
// to it.
// Bad
class Example {
  final _address = "https://fluttercompletereference.com";
  String get address => address;
}

// Good
class Example2 {
  final _address = "https://fluttercompletereference.com";
}
// If it's final, it's already a read-only variable
// because nothing can change its content. In this case
// a getter is simply useless.
// 2. Avoid wrapping public variables with getters and setters
// if there's no validation logic.
class Example3 {
  String _address = "https://fluttercompletereference.com";

  String get address => _address;
  set address(String value) => _address = value;
}
// It compiles but there's no point in doing that:
// both getter and setter don't perform any particular
// logic as they just serve the variable as it is.
// Prefer doing this:
class Example4 {
  var address = "https://fluttercompletereference.com";
}
// In general, use getters when you want to expose
// a variable but in "read-only mode" and setters
// when you want to filter/check the value that is
// going to be assigned.