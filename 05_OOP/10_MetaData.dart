import 'dart:mirrors';

void main(List<String> args) {
  Person('TKM', 10).reflectTest();
}

//  元数据：参考Java中注解的使用方法
//  反射读取元数据示例
class Person {
  @Field('name')
  String name;

  @Field('age')
  int age;

  Person(this.name, this.age);

  void reflectTest() {
    var classMirror = reflectClass(Person);
    var declarations = classMirror.declarations;
    declarations.forEach((key, value) {
      if (value is VariableMirror) {
        value.metadata.forEach((element) {
          var reflectee = element.reflectee;
          if (reflectee is Field) {
            //  此处可以取到Field
            print(reflectee.name);
          }
        });
      }

      if (value is MethodMirror) {
        value.metadata.forEach((element) {
          var reflectee = element.reflectee;
          if (reflectee is Deprecated) {
              //  此处可以取到Deprecated
              print(reflectee.message);
          }
        });
      }
    });
  }

  @Deprecated('use greeting instead')
  void sayHello() {}

  void greeting(String msg) {}
}

//  自定义元数据
class Field {
  final name;

  const Field(this.name);
}
