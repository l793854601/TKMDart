void main(List<String> args) {
  //  声明布尔类型
  var flag1 = true;
  print(flag1);

  bool flag2 = false;
  print(flag2);

  //  Dart中，不存在非空即真、非零即真，if中的条件一句必须为boolean类型
  var flag3;
  if (flag3 == null) {
    print('not null');
  } else {
    print('null');
  }

  var n1 = 0 / 0;
  print(n1);
  print(n1.isNaN);      //  是否是非数字（nan：Not a Number）
  print(n1.isFinite);   //  是否有限
  print(n1.isInfinite); //  是否无限
}
