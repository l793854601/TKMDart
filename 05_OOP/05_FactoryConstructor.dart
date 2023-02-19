void main(List<String> args) {
  var p1 = Person.withName('TKM');
  var p2 = Person.withName('TKM');
  var p3 = Person.withName('Jone');
  //  identical：判断两个实例是否指向同一引用
  print(identical(p1, p2));
  print(identical(p1, p3));
}

class Person {
  String name;

  static final _cache = Map<String, Person>();

  //  私有化命名构造函数
  //  Dart中使用下划线_表示私有，仅本类及类所在文件可访问
  Person._internal(this.name);

  //  工厂构造函数
  //  区别于默认构造函数、命名构造函数，工厂构造函数需要手动返回一个实例
  factory Person.withName(String name) {
    //  根据name查找_cache中的Person
    //  如果存在则直接返回
    //  如果不存在则先根据name将Person放入_cache，再返回
    return _cache.putIfAbsent(name, () => Person._internal(name));
  }
}
