void main(List<String> args) {
  var i = 0;

  //  Future.doWhile()：根据条件遍历执行多个Future
  //  doWhile内部的返回结果必须是Future<boolean>类型
  //  Future.doWhile()的返回结果为Future<void>
  Future.doWhile(() {
    i++;
    return Future.delayed(Duration(seconds: 2), () {
      print('i = $i, current: ${DateTime.now()}');
      return i < 6;
    });
  }).then((value) {
    //  
    print('after Future.doWhile, value = $value');
  });
}
