//  async：标记函数是一个异步函数，其返回值类型是Future
void main(List<String> args) async {
  print('main start');

  //  await：等待某个异步方法执行完毕
  //  await必须放在async函数中
  var num = await getNum();
  print('number: $num');

  print('main end');
}

Future<int> getNum() => Future.delayed(Duration(seconds: 1), () => 10);
