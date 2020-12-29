void main() {
  // 3.3 for and while loops
  // The index cannot be nullable (using int? i = 0 doesn't work).
  for (var i = 0; i <= 10; ++i) 
    print("Number $i");

  // An equivalent version can be written with a classic while loop:
  var i = 0;
  while (i <= 10) {
    print("Number $i");
    ++i;
  }

  // The language also has the do while loop that always executes at least
  // one iteration because the condition is evaluated only
  // at the end of the cycle.
  do {
    print("Number $i");
    ++i;
  } while (i <= 10);

  // If you wanted to alter the flow of the loop you could use:
  // 1. break. It immediatly stops the loop in which it is called.
  // In case of nested loops, only the one whose scope
  // contains break is stopped. For example:
  for (var i = 0; i <= 3; ++i) { // 1.
    for (var j = 0; j <= 5; ++j) { // 2.
      if (j == 5)
        break;
    }
  }
  // In this case only loop 2 is terminated when j is 5 but loop 1 executes
  // normally until i reaches 3. In practical terms, we can say
  // break stops only 1 loop.
  // 2. continue. It skips to the next iteration and, like we've seen
  // before, in case of nested loops it does the jump only
  // for the loop containing it, not the others.
}