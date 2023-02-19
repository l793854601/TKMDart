import 'dart:math';

void main(List<String> args) {
  print(Point.origin);
  print(Point.distanceBetween(Point.origin, Point(3, 4)));
}

class Point {
  final int x, y;

  //  静态属性
  static const Point origin = const Point(0, 0);

  const Point(this.x, this.y);

  //  静态方法
  static double distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }

  @override
  String toString() {
    return 'Point(x = $x, y = $y)';
  }
}
