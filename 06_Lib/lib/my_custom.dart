//  library声明可以省略
//  建议使用lowercase_with_underscores的方式命名库文件
// library MyCustom;

class MyCustom {
  String name;

  static const version = 1;

  MyCustom(this.name);

  void info() => print('A Custom Class');
}
