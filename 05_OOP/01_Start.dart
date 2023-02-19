void main(List<String> args) {
  //  实例化对象
  var p = Person();
  //  访问属性
  p.age = 22;
  p.name = 'Jone';
  //  调用方法
  p.printInfo();

  //  Dart中，万事万物皆为类
  int a = 10;
  print(a.runtimeType);
}

//  声明一个类
class Person {
  //  属性
  String name = '';
  int age = 0;

  //  方法
  void printInfo() {
    print('name: $name, age: $age');
  }
}
