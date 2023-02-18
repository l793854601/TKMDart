void main(List<String> args) {
  //  字面量
  var person = {'name': 'TKM', 'age': 20};
  print(person);

  //  工厂构造函数
  var p = Map<String, Object>();
  //  赋值
  p['name'] = 'Jone';
  p['age'] = 22;
  print(p);

  //  访问属性
  //  取出的属性为可空的
  print(p['name']);

  //  判断Map中的key是否存在
  if (p.containsKey('name')) {
    var name = p['name'];
    print(name);
  }

  //  如果key不存在，则赋值
  //  返回值为key对应的value
  p.putIfAbsent('gender', () => 'male');
  print(p);
  p.putIfAbsent('gender', () => 'female');
  print(p);

  //  获取Map中所有的key、value
  print(p.keys.toList());
  print(p.values.toList());

  //  根据条件删除
  p.removeWhere((key, value) => key == 'gender');
  print(p);
}
