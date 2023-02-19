void main(List<String> args) {
  print(Rect(10, 20));
  print(Rect.origin());
  print(Rect.fromJson({'width': 100, 'height': 200}));
}

class Rect {
  int width, height;

  Rect(this.width, this.height);

  //  初始化列表用法1：重定向构造函数
  Rect.origin() : this(0, 0);

  //  初始化列表用法2：完成对属性的赋值
  Rect.fromJson(Map<String, int> json)
      : this.width = json['width'] as int,
        this.height = json['height'] as int;

  @override
  String toString() {
    return 'Rect(width = $width, height = $height)';
  }
}

class Point {
  int x, y;

  //  可以使用初始化列表，检查入参是否合法（Flutter中的Widget初始化函数很常见）
  Point(this.x, this.y)
      : assert(x > 0),
        assert(y > 0);
}
