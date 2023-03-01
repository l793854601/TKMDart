void main(List<String> args) {
  Stream.fromIterable([0, 1, 2, 3, 4, 5, 6, 1, 2, 7, 8, 9, 10]) 
      //  根据条件跳过元素（只能跳过一个元素）
      .skipWhile((element) => element < 5)
      .listen((event) => print('onData: $event'))
      .onDone(() => print('onDone'));
}