//  延迟初始化，可以实现懒加载（Dart2.12新增）
//  如果不访问result，则sum函数不会执行
late var result = sum(1, 2);

void main(List<String> args) {
  //  Dart中，万事万物皆为对象（Int、Boolean等基本数据类型也是对象），变量存储的是对象的引用
  //  var声明变量
  var age = 18;
  print(age);
  //  age类型推断为int，不能把非int类型的值赋值给age（区别于dynaic）
  print(age.runtimeType);

  //  dynamic声明变量
  //  dynamic类型的变量，在编译期不会做类型检查，因此存在运行期安全隐患
  dynamic a1 = 1;
  print(a1.runtimeType); //  int
  a1 = 'abc';
  print(a1.runtimeType); //  String

  //  明确类型
  String name = '张三';
  print(name);

  //  变量的默认值为null（Dart 2.12及之后，开启空安全，最好不要这样写）
  var defaultName; //  String? defaultName
  print(defaultName);
  int? defaultAge;
  print(defaultAge);

  //  常量，一旦声明，只能赋值一次
  //  const
  const n1 = 10;
  // n1 = 6;
  print(n1);

  //  final
  final n2 = 20;
  // n2 = 20;
  print(n2);

  //  const与final的区别
  //  const声明的常量为编译时常量
  //  报错的本质：DateTime.now()最终调用的构造函数，不是const修饰的，也就不是编译时常量
  // const date = DateTime.now();
  //  可以用final修饰非编译时的常量
  final date = DateTime.now();
  print(date);

  print(result);
}

int sum(int a1, int a2) {
  print('sum called');
  return a1 + a2;
}
