void main() {
  // 3.2 switch statement
  // When you have a series of cases to take into account,
  // instead of using a long chain if if-elses you
  // should go for the switch statement. It can compare many types:
  // 1. compile-time constants
  // 2. enums
  // 3. integers
  // 4. strings
  // 5. classes
  // Classes must not override == if they want to be compared
  // with this statement. At the bottom there's a default label
  // used as fallback if none of the previous cases matches the item 
  // being compared.

  final status = Status.Paused;

  switch (status) {
    case Status.Ready:
      // run();
      break;
    case Status.Paused:
      // pause();
      break;
    case Status.Terminated:
      // stop();
      break;
    default:
      // unknown();
  }

  // If the body of the case is NOT empty you must put a break
  // otherwise your code won't compile.
  // When you just want a fall-through to avoid code-replication,
  // leave the body empty. Here's a few examples:
  // 1. This code is not going to compile because the first
  // case has a body, containing start(), but there isn't a break.
  // switch (status) {
  //  case Status.ready:
  //    start();
  //    missing "break;" here
  //  case Status.Paused:
  //    pause();
  //    break(); 
  // }
  // 2. This code instead is fine because the case doesn't have a body; 
  // the method pause() is going to be called when status is ready or paused.
  // switch (status) {
  //  case Status.Ready:
  //  case Status.Paused:
  //    pause();
  //    break;
  // }
  // The code above is equivalent to...
  // switch (status) {
  //  case Status.Ready:
  //    pause();
  //    break;
  //  case Status.Paused:
  //    pause();
  //    break;
  // }
}

enum Status { Ready, Paused, Terminated }