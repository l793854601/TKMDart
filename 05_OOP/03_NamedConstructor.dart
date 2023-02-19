void main(List<String> args) {
  print(Point(1, 2));
  print(Point.origin());
  print(Point.fromJson({'x': 10, 'y': 20}));
}

class Point {
  num x, y;

  //  默认构造器
  Point(this.x, this.y);

  //  命名构造器
  Point.origin()
      : x = 0,
        y = 0;

  //  命名构造器可以有多个
  Point.fromJson(Map<String, num> json)
      : x = json['x'] as int,
        y = json['y'] as int;

  @override
  String toString() {
    return 'Point(x = $x, y = $y)';
  }
}
