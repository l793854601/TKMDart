//  Dart中没有public、private、protected等关键字表示可见性
//  Dart中，一个dart文件就是一个库
//  Dart中的成员，默认都是public的，即库内外都可以访问，使用下划线_表示库内私有
class Person {
  void publicFunc() {
    print('publicFunc called');
  }

  void _internalFunc() {
    print('_internalFunc called');
  }
}

void _internalFunc() {}

void main(List<String> args) {
  //  文件（库）内，可访问私有成员
  Person()._internalFunc();
  _internalFunc();
}
