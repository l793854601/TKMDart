void main(List<String> args) {
  //  常量构造函数仍然可以创建变量
  var p1 = Point(1, 2);
  var p2 = Point(1, 2);
  //  使用const创建编译时常量
  var p3 = const Point(1, 2);
  var p4 = const Point(1, 2);

  print(p1 == p2); //  false
  print(p1 == p3); //  false
  print(p3 == p4); //  true
}

class Point {
  //  使用常量构造函数，所有的属性必须用final修饰
  final num x, y;

  //  使用const，声明常量构造函数
  const Point(this.x, this.y);
}
