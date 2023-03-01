void main(List<String> args) {
  //  Future.wait()：等待所有Future执行完成，并收集所有Future的返回结果
  //  wait内部的执行顺序为实际执行的顺序
  Future.wait([getName1(), getName2(), getName3()]).then((value) {
    //  value返回的顺序是wait传入的Future的顺序
    value.forEach((element) {
      print('get name: $element');
    });
  });
}

Future<String> getName1() {
  return Future.delayed(Duration(seconds: 4), () {
    print('getName1');
    return 'TKM';
  });
}

Future<String> getName2() {
  return Future.delayed(Duration(seconds: 2), () {
    print('getName2');
    return 'Jone';
  });
}

Future<String> getName3() {
  return Future.delayed(Duration(seconds: 3), () {
    print('getName3');
    return 'Tang';
  });
}
