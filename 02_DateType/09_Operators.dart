void main(List<String> args) {
  //  算数运算符
  assert(5 / 2 == 2.5); //  区别于其他语言，int类型相除，结果为double类型
  assert(5 ~/ 2 == 2); //  除并取整，结果为int（跟其他语言的int相除，结果为int的值相同）

  //  类型推断运算符
  Object str = '123';
  //  类型转换
  print((str as String).length);
  //  如果str为null或者不为DateTime类型，则会抛出异常：type 'String' is not a subtype of type 'DateTime' in type cast
  // print((str as DateTime).day);

  //  对象是指定类型，则返回true
  if (str is String) {
    print(str.length);
  }

  //  对象不是指定类型，则返回true
  if (str is! String) {
    print('str is not a String');
  } else {
    print('str is a String');
    print(str.length);
  }

  //  区别于Java、Kotlin中的泛型，Dart中的is可以检测泛型类
  //  Dart中的泛型，在运行时是不会被擦除的
  print([1, 2, 3] is List<int>);
  print([1, 2, 3] is List<String>);

  //  赋值运算符
  //  ??=：左边变量为null，则将右边值赋值给左边变量
  String? name;
  name ??= 'TKM';
  print(name);
  name ??= 'Jone';
  print(name);

  //  条件表达式
  bool isPublic = true;
  var visibility = isPublic ? 'public' : 'private';
  print(visibility);

  //  ??：如果左边值不为null，则返回左边值，否则返回右边值（参考Swift中的??）
  print(null ?? 1);
  print(1 ?? 3);

  //  ?.：左边值不为null，则调用（参考Swift、Kotlin中的?.）
  List<int>? nums;
  print(nums?.length);

  //  级联运算符
  //  最终返回的是第一个..左边的对象
  //  可用于Builder
  var sb = StringBuffer()
    ..write('1')
    ..write('2')
    ..write('3')
    ..write('4');
  print(sb.toString());
}
