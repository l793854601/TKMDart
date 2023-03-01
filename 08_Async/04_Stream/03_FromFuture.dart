void main(List<String> args) {
  //  使用fromFuture，构建Stream
  Stream.fromFuture(getData())
      .listen((event) => print('onData: $event'))
      .onDone(() => print('onDone'));
}

Future<String> getData() {
  return Future.delayed(Duration(seconds: 1), () => 'data');
}
