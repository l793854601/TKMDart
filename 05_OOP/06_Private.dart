import 'lib/Person.dart';

void main(List<String> args) {
  var p = Person();
  p.publicFunc();
  //  库外部不能访问库的私有成员
  // p._internalFunc();
}
