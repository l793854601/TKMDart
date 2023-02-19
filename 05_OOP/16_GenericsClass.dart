void main(List<String> args) {
  var names = <String>[];
  names.addAll(['TKM', 'Jone']);
  // names.add(123);

  //  Dart中的泛型会保留到运行时（区别于Java）
  print(names is List<String>);

  //  Dart中的泛型默认是支持协变的，因此会有安全隐患
  // List<Object> objs = names;
  //  抛出异常：type 'int' is not a subtype of type 'String' of 'value'
  // objs.add(1);

  var box = Box<int>(1);
  box.put(2);
  box.put(3);
  // box.put('1');
}

abstract class Cache<T> {
  T? getByKey(String key);
  void setByKey(String key, T value);
}

class Person {
  String name;

  Person(this.name);
}

class PersonCache extends Cache<Person> {
  static final _cache = Map<String, Person>();

  @override
  Person? getByKey(String key) {
    return _cache[key];
  }

  @override
  void setByKey(String key, Person value) {
    _cache[key] = value;
  }
}

class Box<T> {
  T a;

  Box(this.a);

  void put(T a) {
    this.a = a;
  }
}
