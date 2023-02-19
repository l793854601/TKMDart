import 'dart:math';

void main(List<String> args) {
  //  声明整数
  int count = 3;
  print(count);

  //  声明浮点数
  double price = 3;
  print(price);

  //  声明数值类型
  //  num为抽象类
  num n1 = 3;
  print(n1);
  print(n1.runtimeType); //  int
  n1 = 3.7;
  print(n1.runtimeType); //  double

  num? n2;
  print(n2.runtimeType);  //  Null，注意Null是一个类（区别于null）

  //  类型转换
  //  Dart中，double与int不会隐式转换
  print(n1.toInt().runtimeType);
  print(count.toDouble().runtimeType);
  print(count.toString().runtimeType);

  //  四舍五入
  print(pi.round()); //  保留整数
  print(pi.toStringAsFixed(2)); //  保留小数后指定位数

  //  返回余数
  print(10.remainder(3)); //  10 % 3

  //  数字比较（实现Comparable接口）
  //  0：相等
  //  1：大于
  //  -1：小于
  print(10.compareTo(12));

  //  最大公约数
  print(12.gcd(18));

  //  科学计数法
  print(1000.toStringAsExponential(2));
  print(1000.toStringAsExponential(1));
}
