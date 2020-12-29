void main() {
  // 3.4 Assertions
  // While writing the code you can use assertions to throw an
  // exceptiom if the given condition evaluate to false. 
  // For example:
  // the method returns a json encoded string
  // final json = getJSON();
  // if length > 0 is false --> runtime exception
  // assert(json.length > 0, "String cannot be empty");
  // other actions doParse(json);
  // - In release mode, every assert is ignored by the compiler
  // and you're guaranteed that they won't interfere with the
  // execution flow. Assertions work only in debug mode.

  // 3.5 Good practices
  // 1. Try to always use brackets, even if they can be omitted,
  // so that you can avoid unexpected behaviors.
  // Imagine you had written this code...
  // Version 1
  if ("A" == "B")
    if ("B" == "B")
      print("Oh well!");
  else
    print("Oops...");
  // But in reality you wanted to write this,
  // with a better indentation:
  // Version 2
  if ("A" == "A")
    if ("B" == "B")
      print("Oh well!");
    else
      print("Oops...");
  
  // 2. When you have to traverse an entire list and you don't 
  // care about the position in which you are during the iteration,
  // use a for-in loop. As we've already said, it's less verbose
  // and so more understandable.

  // 3. Use assertions, in particular when you create Flutter apps, to control
  // the behavior of your software. Don't remove them when
  // you're ready to deploy the code to the production
  // world because they will be automatically discarded.
}