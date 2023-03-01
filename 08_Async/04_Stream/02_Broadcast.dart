import 'dart:async';

//  Broadcast：广播，数据可以被listen多次
void main(List<String> args) {
  //  创建StreamController
  StreamController<String> controller = StreamController.broadcast();
  //  创建Stream
  //  类型为_BroadcastStream<String>
  Stream<String> stream = controller.stream;

  //  Broadcast类型的Stream可以被多次监听
  //  第一次监听
  stream.listen((event) {
    print('listen1: event = $event');
  });

  //  第二次监听
  stream.listen((event) {
    print('listen2: event = $event');
  });

  //  发送数据
  controller.sink.add('1');
  controller.sink.add('2');
  controller.sink.add('3');

  //  关闭
  controller.sink.close();

}
