void main() {
  // 2.2.2 Strings

  // No differences between s and t
  var s = "Double quoted";
  var t = 'Single quoted';

  // Interpolate an integer into a string
  var age = 25;
  var myAge = "I am $age years old";

  // Expressions need '{' and '}' preceeded by $
  var test = "${25.abs()}";

  // This is redundant, don't do it because ${} already calls toString()
  var redundant = "${25.toString()}";

  // triple quote
  // Very useful for SQL queries, for example
  var query = """
      SELECT name, surname, age 
      FROM people
      WHERE age >= 18
      ORDER BY name DESC
  """;

  // In Dart there isn't a char type because there are only strings.
  // If you want to access particular character of a string you have
  // to use the [] operator:
  // final name = "Roxel";
  // print(name[0]); // prints "R"
  // print(name[2]); // prints "x"

  // classic way to concatinate strings
  // var s = 'I am ' + name + ' and I am ' + (23).toString() + ' y.o.';
  // preferred way:
  // var s = 'I am $name. I am ${25} years old';

  // in case string is long, omit the + operator
  // Ok
  // var s = 'I am going to the'
  //          'second line';
  // Still ok but '+' can be omitted
  // var s = 'I am going to the' +
  //          'second line';

  // Since strings are immutable, making too many concatinations with the
  // + operator might be inefficient. Use StringBuffer instead.
  // var value = "";
  // for(var i = 0; i < 90000; ++i) {
  //   value += "$i ";
  // }
  // StringBuffer doesn't internally create a new string. The string is
  // created once at the moment in which toString() is called.
  // var buffer = StringBuffer();
  // for(var i = 0; i < 90000; ++i) {
  //   buffer.write("$i ");
  // }
  // var value = buffer.toString();
}