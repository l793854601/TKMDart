//  Future是Dart中的类，可以通过Future封装异步任务
//  Future的三种状态：
//  1.Uncompleted（未完成）：Future实例创建完毕时的状态
//  2.Completed with data（已完成，并且返回数据）：Future回调then时的状态
//  3.Completed with error（已完成，但返回报错）：Future回调onError/catchError时的状态
void main(List<String> args) {
  print('futureTest start');

  getUrl()
      .then((value) => print('url: $value'))
      .catchError((error) => print('error: $error'))
      .whenComplete(() => print('completed'));

  getName()
      .then((value) => print('name: $value'))
      .catchError((error) => print('error: $error'))
      .whenComplete(() => print('completed'));

  getOwner()
      .then((value) => print('owner: $value'))
      .catchError((error) => print('error: $error'))
      .whenComplete(() => print('completed'));

  print('futureTest end');
}

Future<String> getUrl() {
  //  创建Future方式1
  return Future(() => 'https://www.baidu.com');
}

Future<String> getName() {
  //  创建Future方式2（返回error）
  return Future.error(Exception('Just Test error'));
}

Future<String> getOwner() {
  //  创建Future方式3
  return Future.delayed(Duration(seconds: 2), () {
    return 'TKM';
  });
}
