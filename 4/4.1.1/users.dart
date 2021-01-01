// The same rules on package private members also
// apply to classes and functions. For example,
// void something() is visible from the outside
// while void _something() is private to its
// library.
class Users { }

class _UsersHelper {}
// In this case, Users is visible while _UsersHelper
// is package-private (exactly as it happens
// with variables and method).