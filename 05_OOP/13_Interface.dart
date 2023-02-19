void main(List<String> args) {
  var obj = MyObject();
  obj.run();
  obj.call();
  print(obj.name);
}

//  Dart中，使用抽象类定义接口
abstract class Runnable {
  void run();
}

abstract class Callable {
  void call();
}

abstract class Named {
  String get name;
}

//  Dart中，声明的class都有一个隐式的接口（不常用）
class Rect {
  int width, height;

  Rect(this.width, this.height);

  int area() => width * height;
}

class MyObject implements Runnable, Callable, Named, Rect {
  @override
  int get width => 0;

  @override
  int get height => 0;

  @override
  set width(int _width) {}

  @override
  set height(int _height) {}

  @override
  void run() {
    print('MyObject run');
  }

  @override
  void call() {
    print('MyObject call');
  }

  @override
  String get name => runtimeType.toString();

  @override
  int area() {
    return 0;
  }
}
