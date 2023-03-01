void main(List<String> args) {
  //  Future.forEach()：遍历一个给定的集合，根据集合元素执行多个Future
  Future.forEach([1, 2, 3, 4, 5], (element) {
    return Future.delayed(Duration(seconds: 1), () {
      return '$element\_aaa';
    }).then((value) => print('$value'));
  }).then((value) {
    print('after Future.forEach, value = $value');
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
