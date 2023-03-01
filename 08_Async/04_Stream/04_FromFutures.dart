void main(List<String> args) {
  Stream.fromFutures([
    getData('a'),
    getData('b'),
    getData('c'),
    getData('over')
  ]).listen((event) => print('onData: $event'))
    .onDone(() => print('onDone'));
}

Future<String> getData(String value) {
  return Future.delayed(Duration(seconds: 1), () => value);
}