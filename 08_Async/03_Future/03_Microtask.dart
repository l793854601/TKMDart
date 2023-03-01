import 'dart:async';

//  Future执行顺序
void main(List<String> args) {
  print('start');

  //  Future.value(value)
  //  如果value是非Future类型的变量，则Future.value()创建的是微任务，等同于Future.microtask()
  Future.value('Future.value(const)').then((value) => print(value));
  //  如果value是Future类型的变量，则根据value是哪种方式创建的Future决定
  Future.value(Future.value(123).then((value) =>  print('Future.value(var)')));

  //  Future默认是异步任务，会被丢到事件任务队列中
  Future(() => print('Future() task'));

  //  Future.sync()：同步任务，同步执行，不会丢到事件队列中
  Future.sync(() => print('Future.sync() task'));

  //  Future.microtask()：微任务，会丢到微任务队列中，优先级高于事件任务
  Future.microtask(() => print('Future.microtask() task'));

  print('end');
}
