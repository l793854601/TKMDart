void main(List<String> args) {
  dynamic a = A();
  a.test();
  a.testAgain();
}

class A {
  //  noSuchMethod()方法触发时机：
  //  1.对象类型为dynamic
  //  2.调用未声明的方法
  @override
  noSuchMethod(Invocation invocation) {
    print('noSuchMethod called: $invocation');

    //  可在此做消息转发
    var memberName = invocation.memberName;
    if (memberName == Symbol('testAgain')) {
      _methodForwarding(invocation);
    } else if (memberName == Symbol('')) {
      print('${invocation.memberName} called');
    } else {
      //  父类默认实现为抛出异常：NoSuchMethodError
      // super.noSuchMethod(invocation);
    }
  }

  void _methodForwarding(Invocation invocation) {
    print('method forwarding from ${invocation.memberName}');
  }
}
