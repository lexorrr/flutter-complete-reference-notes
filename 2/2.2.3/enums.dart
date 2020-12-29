void main() {
  // 2.2.3 Enumerated types
  // Also known as "enums", enumerated types are containers for constant
  // values that can be declared with the 'enum' keyword.

  Fruits liked = Fruits.Apple;
  var disliked = Fruits.Banana;
  print(liked.toString()); // prints 'Fruits.Apple'
  print(disliked.toString()); // prints 'Fruits.Banana'

  // Each item of the enum has an associated number called index starting
  // from zero
  // var a = Fruits.Apple.index; // 0
  // var b = Fruits.Pear.index; // 1
  // var c = Fruits.Grapes.index; // 2

  // 2.2.3.1 Good Practices
  /// MEDTHOD 1. Checks if the piece can move in diagonal
  bool diagonalMoveC(Chess item) {
    return false;
  }

  /// METHOD 2. Checks if a piece can move in diagonal: [item] can only be:
  /// 1. King
  /// 2. Queen
  /// 3. Rook
  /// 4. Bishop
  /// 5. Knight
  /// 6. Pawn
  /// Any other number is not allowed.
  bool diagonalMoveS(int item) {
    return false;
  }
}

// Enum example:
enum Fruits { Apple, Pear, Grapes, Banana, Orange }

enum Chess { King, Queen, Rook, Bishop, Knight, Pawn }

