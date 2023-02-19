void main(List<String> args) {
  var stringCache = StringCache();
  stringCache.setByKey('a', 'a');
  print(stringCache.getByKey('a'));

  var personCache = PersonCache();
  personCache.setByKey('TKM', Person('TKM'));
  print(personCache.getByKey('TKM'));
}

abstract class Cache<T> {
  T? getByKey(String key);
  void setByKey(String key, T value);
}

class StringCache implements Cache<String> {
  static final _cache = Map<String, String>();

  @override
  String? getByKey(String key) {
    return _cache[key];
  }

  @override
  void setByKey(String key, String value) {
    _cache[key] = value;
  }
}

class Person {
  String name;

  Person(this.name);

  @override
  String toString() {
    return 'Person(name = $name)';
  }
}

class PersonCache implements Cache<Person> {
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
