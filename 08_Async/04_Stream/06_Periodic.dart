void main(List<String> args) {
  //  默认会一直发送数据
  Stream.periodic(Duration(seconds: 1), (count) => count)
    //  可以使用take()，截断数据流，只取前几个
    .take(5)
    .listen((event) => print('onEvent: $event'))
    .onDone(() => print('onDone'));
}
