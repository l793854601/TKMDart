import 'dart:isolate';
//  Isolate是Dart中的多线程
//  Dart中的线程是以隔离（Isolate）的方式存在的
//  每个Isolate都有自己独立的，私有内存块（多个线程不共享内存）
//  没有共享内存，就不需要竞争资源，就不需要锁（不用担心死锁问题）
//  所有的Dart代码，都运行在Isolate中
//  微任务队列、事件队列、事件轮询，都在Isolate中进行
//  与Java类似，Dart也是运行在虚拟机上的，因此Dart本身不具备开启新线程的能力

void main(List<String> args) {
  print('main start');
  //  Isolate.current：获取当前线程（Isolate实例）
  //  主线程Isolate名称：main
  print('current isolate: ${Isolate.current.debugName}');
  //  开启线程
  //  传入的函数必须有且只有一个参数
  //  以下三个线程执行顺序不固定
  Isolate.spawn(newThread1, 'hello');
  Isolate.spawn(newThread2, 'hello');
  Isolate.spawn(newThread3, 'hello');
  print('main end');
}

void newThread1(String message) {
  print('newThread start');
  //  当前线程的Isolate名称默认为函数名
  print('current isolate: ${Isolate.current.debugName}');
  print('newThread1 end');
}

void newThread2(String message) {
  print('newThread start');
  print('current isolate: ${Isolate.current.debugName}');
  print('newThread1 end');
}

void newThread3(String message) {
  print('newThread start');
  print('current isolate: ${Isolate.current.debugName}');
  print('newThread1 end');
}