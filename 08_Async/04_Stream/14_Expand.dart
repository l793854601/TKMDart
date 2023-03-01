void main(List<String> args) {
  Stream.fromIterable([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
      //  转换元素
      .expand((element) => [element, element * 10, element * 100])
      .listen((event) => print('onData: $event'))
      .onDone(() => print('onDone'));
}