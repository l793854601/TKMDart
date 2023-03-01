void main(List<String> args) {
  Stream.fromIterable([1, 2, 3, 4, 5])
      .listen((event) => print('onData: $event'))
      .onDone(() => print('onDone'));
}
