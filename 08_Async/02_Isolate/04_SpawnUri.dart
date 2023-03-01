import 'dart:isolate';

void main(List<String> args) {
  start();

  //  执行耗时任务
  newIsolate();

  init();
}

void start() {
  print('App start: ${DateTime.now()}');
}

void newIsolate() async {
  print('new isolate creating: ${DateTime.now()}');
  ReceivePort receivePort = ReceivePort();
  SendPort sendPort = receivePort.sendPort;
  //  创建新线程
  //  uri：新线程创建所在文件的路径
  Isolate childIsolate = await Isolate.spawnUri(
    Uri(path: 'lib/childIsolate.dart'), 
    ['data1', 'data2', 'data3'], 
    sendPort
  );

  receivePort.listen((message) {
    print('receive message from child isolate: $message');
    if (message == 'over') {
      receivePort.close();
      //  杀死Isolate，释放资源
      childIsolate.kill();
    }
  });
}

void init() {
  print('App init: ${DateTime.now()}');
}
