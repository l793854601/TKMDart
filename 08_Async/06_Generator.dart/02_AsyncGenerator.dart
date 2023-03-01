void main(List<String> args) {
  print('main start');

  Stream<int> stream = getNumberAsync(10);
  stream
      .listen((event) => print('onData: $event'))
      .onDone(() => print('onDone'));

  print('main end');
}

//  异步生成器（async+yield）
//  使用async*，返回的是Stream对象
//  yield不用暂停，数据以流的方式一次性推送
Stream<int> getNumberAsync(int n) async* {
  print('get number start');

  int i = 0;
  while (i < n) {
    yield i;
    i++;
  }

  print('get number end');
}
