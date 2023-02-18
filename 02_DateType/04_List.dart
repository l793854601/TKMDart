void main(List<String> args) {
  //  声明List
  //  List为泛型类，不指明泛型类型，则泛型类型为dynamic，而非Object（区别于Java、Kotlin中的List）
  List l1 = ['a', 'b', 'c'];
  print(l1);
  print(l1.runtimeType); //  List<dynamic>
  l1 += [1, 2, 3];
  print(l1);

  //  限定元素类型
  List<int> l2 = <int>[1, 2, 3];
  print(l2);

  //  构造函数（工厂构造函数）
  //  empty
  //  growable：false则不能添加元素（固定长度）
  var l3 = List<int>.empty(growable: true);
  print(l3.runtimeType);
  l3.add(1);
  l3.add(2);
  l3.add(3);
  print(l3);

  //  filled
  var l4 = List.filled(3, 6);
  print(l4);

  //  generate
  var l5 = List.generate(10, (index) => index * 10);
  print(l5);

  //  扩展操作符
  var l6 = [0, ...l4];
  print(l6);

  //  声明编译时常量List
  var constList = const [1, 2, 3, 4];
  //  编译不会报错，但运行时会抛出异常：Cannot modify an unmodifiable list
  // constList[0] = 1;

  //  返回列表的长度
  print(l1.length);

  //  反转列表
  //  结果为Iterable类型，使用toList转换为List类型
  print(l1.reversed.toList());

  //  添加元素
  l3.addAll([4, 5, 6]);
  print(l3);

  //  删除元素
  l3.remove(6);
  l3.removeAt(0);
  print(l3);

  //  在指定位置添加元素
  l3.insert(1, 9);
  print(l3);

  //  清空
  l3.clear();
  print(l3);
  print(l3.isEmpty);

  //  拼接元素
  var words = ['hello', 'world'];
  print(words.join('-'));
}
