void main(List<String> args) {
    Stream.fromIterable([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) 
      //  根据个数跳过前几个元素
      .skip(5)
      .listen((event) => print('onData: $event'))
      .onDone(() => print('onDone'));
}