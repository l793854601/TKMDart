void main(List<String> args) async {
  //  Future.any()：返回最先完成的Future结果
  Future.any([getName1(), getName2(), getName3()]).then((value) {
    print('getName: $value');
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
