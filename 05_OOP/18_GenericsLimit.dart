void main(List<String> args) {
  //  不指定泛型，则泛型类型为SomeBaseClass
  print(Foo());
  print(Foo<SomeBaseClass>());
  print(Foo<Extender>());

  //  Type argument 'AnotherClass' doesn't conform to the bound 'SomeBaseClass' of the type variable 'T' on 'Foo'
  // print(Foo<AnotherClass>());

  var foo = Foo();
  foo.test(SomeBaseClass());
  foo.test(Extender());

  var p = Person();
  var m = Male();

  var room1 = Room(m);
  room1.checkIn(m);
  // room.checkIn(p);
  Person cp1 = room1.currentRenter();
  Male cm1 = room1.currentRenter();

  var room2 = Room(p);
  room2.checkIn(p);
  room2.checkIn(m);
  Person cp2 = room2.currentRenter();
  // Male cm2 = room2.currentRenter();
}

class SomeBaseClass {}

class AnotherClass {}

class Extender extends SomeBaseClass {}

//  Dart中的泛型限定只有extends，没有super（区别于Java、Kotlin）
class Foo<T extends SomeBaseClass> {
  @override
  String toString() => 'Instance of \'Foo<$T>\'';

  void test(T a) {}

  T get(T a) => a;
}

class Person {}

class Male extends Person {}

class Room<T extends Person> {
  T renter;

  Room(this.renter);

  void checkIn(T renter) => this.renter = renter;

  T currentRenter() => renter;
}
