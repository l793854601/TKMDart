void main(List<String> args) {
  var p1 = Person('Bob', 'Smith');
  var p2 = Person('Bob', 'Smith');
  var p3 = 'not a person';
  var p4 = p1;
  print(p1.hashCode);
  print(p2.hashCode);
  print(p3.hashCode);
  print(p1 == p2);
  print(p1 == p3);
  print(p1 == p4);
}

class Person {
  final String firstName, lastName;

  const Person(this.firstName, this.lastName);

  //  使用Object提供的方法，生成hashCode
  //  hashCode可作为Map中的key
  //  不相同（==返回false）的两个实例，hashCode可以相同（hash碰撞）
  //  重写了hashCode()方法，则需要重写==
  @override
  int get hashCode => Object.hash(firstName, lastName);

  //  Dart中没有类似Java的equals()方法，只有==运算符
  //  ==默认的逻辑：判断两个实例是否相同（是否为相同引用）
  //  重写运算符，自定义两个实例是否
  @override
  bool operator ==(Object other) {
    return other is Person &&
        firstName == other.firstName &&
        lastName == other.lastName;
  }
}
