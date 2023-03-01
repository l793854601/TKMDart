import 'dart:async';
import 'dart:isolate';

const _OVER_FLAG = "over";

void main(List<String> args) async {
  //  在此获取的是new isolate的发送端口
  SendPort newSendPort = await initMain();
  //  main isolate向new isolate发送消息
  newSendPort.send('a');
  newSendPort.send('b');
  newSendPort.send('c');
  newSendPort.send(_OVER_FLAG);
}

Future<SendPort> initMain() {
  //  使用Completer包装SendPort，返回，给外部使用
  Completer<SendPort> completer = Completer();
  //  创建main isolate的接收端口
  ReceivePort mainReceivePort = ReceivePort();
  //  创建main isolate的发送端口
  SendPort mainSendPort = mainReceivePort.sendPort;

  //  接收端口接收从new isolate发送过来的消息
  //  ReceivePort重复监听会报错：Bad state: Stream has already been listened to.
  mainReceivePort.listen((message) {
    if (message is SendPort) {
      //  获取到new isolate的接收端口
      SendPort newSendPort = message;
      completer.complete(newSendPort);
    } else {
      print('receive message from new isolate: $message');
      if (message == _OVER_FLAG) {
        mainReceivePort.close();
      }
    }
  });

  //  与new isolate建立连接
  Isolate.spawn(initNewIsolate, mainSendPort);

  return completer.future;
}

void initNewIsolate(SendPort mainSendPort) {
  //  创建new isolate的接收端口
  ReceivePort newReceivePort = ReceivePort();
  //  创建new isolate的发送端口
  SendPort newSendPort = newReceivePort.sendPort;
  //  与main isolate建立连接
  mainSendPort.send(newSendPort);
  //  监听从main isolate发送过来的消息
  newReceivePort.listen((message) {
    print('receive message from main isolate: $message');
    if (message == _OVER_FLAG) {
      newReceivePort.close();
    }
  });

  //  new isolate向main isolate发送消息
  mainSendPort.send('1');
  mainSendPort.send('2');
  mainSendPort.send('3');
  mainSendPort.send(_OVER_FLAG);
}
