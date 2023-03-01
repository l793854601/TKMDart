void main(List<String> args) {
    Stream.fromIterable([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) 
      //  根据条件过滤元素（相当于Rx中的filter）
      .where((element) => element % 2 == 0)
      .listen((event) => print('onData: $event'))
      .onDone(() => print('onDone'));
}