void main(List<String> args) {
  var c = MyClass();
  c.printA();
  c.printB();

  //  后混入的内容，会覆盖先混入的内容
  print(c.name);
  //  类中原油的内容，会覆盖混入的内容
  print(c.age);
}

//  mixin声明的类，必须隐式或显式继承自Object，且不能有构造函数
mixin MixinA {
  String name = 'MixinA';
  int age = 10;

  void printA() {
    print('A');
  }
}

mixin MixinB {
  String name = 'MixinB';
  int age = 20;

  void printB() {
    print('B');
  }
}

class MySuperClass {}

//  使用mixin实现C++中的多继承效果
//  多继承会出现菱形继承效果，不建议使用（可以使用复合代替多继承）
class MyClass extends MySuperClass with MixinA, MixinB {
  int age = 30;
}
