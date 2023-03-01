import 'dart:async';
//  Stream是Dart中的异步数据流，可以连续不断的返回多个数据
//  Future是异步，但只能返回一个值
//  Strea也是异步，可以返回多个值（数据流）

//  SingleSubscription：单一订阅，只能被listen一次，listen多次会报错
void main(List<String> args) {
  //  创建StreamController
  StreamController<String> controller = StreamController();
  //  创建Stream
  //  类型为_ControllerStream<String>
  Stream<String> stream = controller.stream;
  //  监听，只能监听一次
  //  监听的完整用法
  stream.listen(
    (event) => print('onData: $event'),
    onError: (error) => print('onError: $error'),
    onDone: () => print('onDone'),
  );

  //  发送数据
  controller.sink.add('1');
  controller.sink.add('2');
  controller.sink.add('3');
  controller.sink.addError(Exception('Just Test'));
  controller.sink.add('4');
  //  关闭
  controller.sink.close();
  //  关闭后不能再发送数据，否则会报错：Bad state: Cannot add event after closing
  // controller.sink.add('5');
}
