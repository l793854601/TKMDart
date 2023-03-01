//  Dart默认为单线程（EvetLoop）
//  Dart单线程包括：主线程、微任务、事件任务
//  主线程执行同步任务
//  微任务、事件任务执行异步任务
//  微任务队列：scheduleMicrotask来调度
//  事件队列：I/O、Timer、绘制事件
//  微任务优先级高于事件任务，先执行微任务队列中的任务，再执行事件队列中的任务
//  每次调用栈执行完毕，就会启动事件轮询，查看微任务队列、事件任务队列中是否有任务

//  主线程、微任务队列、事件任务队列执行过程：
//  1.先将主线程中的任务放入调用栈执行，遇到异步任务，则先将异步任务放入对应的事件队列中
//  2.当前调用栈为空（主线程执行完毕），则启动一次事件轮询 
//  3.优先将微任务队列中的任务放入调用栈执行，如果微任务中没有任务，则将事件任务队列中的任务放入调用栈执行
//  4.调用栈执行完毕，则启动一次事件轮询
//  5.反复执行3、4步骤，直到微任务队列、事件任务队列中都没有任务了

import 'dart:async';

//  start
//  end
//  microtask-A
//  event-A
//  event-C
//  microtasl-B in event-A
//  microtask-C in event-A
//  event-B in microtask-A
void main(List<String> args) {
  //  主线程
  print('start');

  //  事件任务
  Timer.run(() {
    print('event-A');

    //  微任务
    scheduleMicrotask(() {
      print('microtasl-B in event-A');
    });

    print('event-C');

    scheduleMicrotask(() {
      print('microtask-C in event-A');
    });
  });

  scheduleMicrotask(() {
    print('microtask-A');

    Timer.run(() {
      print('event-B in microtask-A');
    });
  });

  //  主线程
  print('end');
}
