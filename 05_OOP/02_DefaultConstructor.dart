void main(List<String> args) {
  var p = Point(1, 2);
  print(p);
}

class Point {
  //  Dart2.12中要求：属性要么为可空类型，要么在构造函数执行完毕之前，有明确的值
  num x, y;

  //  使用初始化列表保证属性在构造器调用完之前被赋值
  // Point(num x, num y)
  //     : this.x = x,
  //       this.y = y;

  //  默认构造函数的简写
  Point(this.x, this.y);

  @override
  String toString() {
    return 'Point(x = $x, y = $y)';
  }
}
