void main(List<String> args) {
  Side.values.forEach((element) {
    print(element.index);
    print(element.name);
  });

  Color.values.forEach((element) {
    print(element.rgbValue);
    element.render();
  });
}

//  Dart中，enum声明的枚举类，隐式继承自Enum
//  简单枚举
enum Side {
  top,
  left,
  bottom,
  right;
}

//  增强枚举：支持自定义属性、方法（Dart 2.17及之后支持）
enum Color {
  //  成员必须由构造函数初始化
  red('#ff0000'),
  green('#00ff00'),
  blue('#0000ff');

  //  属性必须为final修饰
  final String rgbValue;

  //  构造函数必须由const修饰
  const Color(this.rgbValue);

  void render() => print('$name randered');
}
