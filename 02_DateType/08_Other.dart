void main(List<String> args) {
  var str = '😂';
  //  Dart中的字符串使用UTF-16表示
  print(str.length);
  //  Unicode（UTF-32）
  print(str.runes.length);

  //  Runes可以将UTF-32表示的内容转成符号
  Runes input = Runes('\u{1f600}');
  print(String.fromCharCodes(input));

  //  Sumbol：与反射相关
  var a = #abc;
  print(a);
  var b = Symbol('abc');
  print(b);
  print(a == b);

  //  声明动态类型的变量
  dynamic foo = 'bar';
  print(foo);
  print(foo.runtimeType); //  String

  foo = 123;
  print(foo);
  print(foo.runtimeType); //  int
  //  dynamic不会在编译期做类型检查，因此会抛出异常：Class 'int' has no instance getter 'length'.
  //  尽量不要使用dynamic（Dart号称是类型安全的语言）
  // print(foo.length);
}
