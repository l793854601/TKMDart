import 'dart:isolate';

//  Isolate多线程通信机制
//  Isolate多线程之间，通信的唯一方式是Port
//  ReceivePort：初始化接收端口、创建发送端口、接收消息、监听消息、关闭端口
//  SendPort：将消息发送给ReceivePort
//  通信方式：单向、双向

const _OVER_FLAG = "over";

//  单向通信
void main(List<String> args) async {
  //  1.创建ReceivePort（接收端口）
  ReceivePort receivePort = ReceivePort();
  //  2.创建SendPort（发送端口）
  SendPort sendPort = receivePort.sendPort;

  //  3.创建Isolate
  //  Isolate.spawn的返回类型是Future<Isolate>
  //  将SendPort传递给newThread，就是要接收从newThread发送过来的消息
  Isolate isolate = await Isolate.spawn(newThread, sendPort);

  //  4.由ReceivePort（接收端口）监听管道消息
  receivePort.listen((message) {
    print('Receive message from new isolate: $message');
    if (message == _OVER_FLAG) {
      //  不再使用时，需要关闭接收端口，否则会阻塞
      receivePort.close();
      //  杀死Isolate
      isolate.kill(priority: Isolate.immediate);
    }
  });
}

void newThread(SendPort sendPort) {
  //  newThrad向main发送消息
  sendPort.send('1');
  sendPort.send('2');
  sendPort.send('3');
  sendPort.send(_OVER_FLAG);
}
