import 'test.dart';

void main() {
  // 4.1.1 Encapsulation
  // You may be used to hide implementation details
  // in your classes using public, protected and private
  // keywords but there's no equivalent in Dart.
  // Every member is public by default unless
  // you append an underscore (_) which makes
  // it private to its library.

  final obj = Test();

  // OK
  var name = obj.nickname;
  // ERROR, doesn't compile
  // var real = obj._realName;
  // The variable nickname is public and everyone
  // can see it but _realName can be seen ONLY
  // inside test.dart. In other words, if you
  // put the underscore in front of the name
  // of a variable, it is only visible only
  // within that file.

  final obj2 = Test2();

  // Ok
  var name2 = obj2.nickname;
  // Ok, it works because 'Test2' is in the same file
  var real = obj2._realName;

}

class Test2 {
  String nickname = "";
  String _realName = "";
}