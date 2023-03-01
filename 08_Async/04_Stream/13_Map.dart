void main(List<String> args) {
  Stream.fromIterable([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
      .map((event) => event * 10)
      .listen((event) => print('onData: $event'))
      .onDone(() => print('onDone'));
}