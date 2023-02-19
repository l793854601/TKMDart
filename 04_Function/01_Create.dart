import 'dart:math';

void main(List<String> args) {
  print(isNoble(10));
  print(isNoble1(20));
  print(isNoble(30));

  //  匿名函数
  var myPrint = (String value) {
    print(value);
  };
  ['a', 'b', 'c'].forEach((e) {
    myPrint(e);
  });

  //  立即执行函数
  var result = (int a, int b) {
    return a + b;
  }(10, 30);
  print(result);
}

bool isNoble(int atomicNumber) {
  return atomicNumber > 100;
}

//  Dart中允许省略函数的入参、返回值类型，但不建议，可读性太差
isNoble1(atomicNumber) {
  return atomicNumber > 100;
}

//  函数体内只包含函一个表达式，则可以使用箭头函数（=>）
//  =>：是{ return 表达式; }的简写，也叫箭头函数
bool isNoble2(int atomicNumber) => atomicNumber > 100;
