void main() {
  // 3.1.1 Conditional expressions
  // In Dart there are two shorthands for conditional expressions that
  // can replace the if-else statement:
  // 1. valueA ?? valueB. If valueA is nun-null, valueA is returned; 
  // otherwise valueB is evaluated and then returned. If the 
  // definition is too verbose, you can understand this syntax by 
  // looking at the following example.
  // String? status; // This is null
  // isAlive is a String declared somewhere before
  // if (status != null)
  //    isAlive = status;
  // else 
  //    isAlive = "RIP";
  // More consice way:
  String? status; // This is null
  String isAlive = status ?? "RIP";
  // The ?? operator automatically checks if status is null and decides
  // what to do:
  // - status is not null: return status;
  // - status is null: return provided "default value" at the right of ??
  // 2. condition ? A : B;. If condition is true A is returned,
  // otherwise you get B. It's a pretty common pattern among
  // modern langauges so you might already be familiar with it.
  // String status;
  // if (correctAns >= 18)
  //  status = "Test passed!";
  // else 
  //  status = "You didn't study enough...";
  // More concise way:
  // String status = (correctAns >= 18) ?
  //  "Test passed!" : "You didn't study enough...";

  // 3.1.2 Good practices
  // Simple boolean expressions are easy to read but complicated
  // ones might require documentation and might not fit well inside
  // a single if statement like the following:
  // if ( (A && B || C && !A) || (!(A && C) || B) ) { ... }
  // In such cases, you probably want to make the code more
  // readable by splitting the conditions:
  // final usefulTestName1 = A && B || C && !A;
  // final usefulTestName2 = !(A && C);
  // if (usefulTestName1 || userfulTestName2 || B) { ... }
  // Keep expressions short and easy to read. Break down long conditions into
  // smaller pieces and give the variables good names to better
  // understand what you want to check.

  // Use short if syntax only when there's one condition or at
  // maximum two short ones. The longer the line is the harder 
  // it is to understand.
}