void main() {
  // 3.3.1 for-in loop
  // There are some cases in which you want to completely traverse
  // a string or a container and you don't care about the index.
  // Look at this very easy example:
  // final List<String> friendsList = ["A", "B", "C", "D", "E"];
  // for (var i = 0; i < friendsList.length; ++i) 
  //  print(friendsList[i]);
  // You are using i just to retrieve the element. In such cases
  // you should do the following:
  // List<String> friendsList = ["A", "B", "C", "D", "E"];
  // for (final friend in friendsList)
  //  print(friend);
  // This version is less verbose and clearer. You're still
  // traversing the entire list but now, instead of
  // the index i, you have declared final friend that represents
  // an item at each iteration.
}