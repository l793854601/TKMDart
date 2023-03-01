//  Generator：生成器
//  生成器是一种特殊的函数，返回值通过yield关键字来指定

//  生成器的分类：
//  1.同步生成器（sync+yield）
//  2.异步生成器（async+yield）
//  3.递归生成器（yield*）

void main(List<String> args) {
  print('main start');

  Iterable<int> iterable = getNumberSync(5);
  Iterator<int> iterator = iterable.iterator;
  //  参考Java中的while遍历Iterable的用法
  while (iterator.moveNext()) {
    print('next: ${iterator.current}');
  }
  print('main end');
}

//  同步生成器（sync+yield）
//  使用sync*，返回的是Iterable对象
//  yield会返回moveNext为true，并等待moveNext指令（阻塞）
Iterable<int> getNumberSync(int n) sync* {
  print('get number start');

  int i = 0;
  while (i < n) {
    //  yield相当于return值给外部
    yield i;
    i++;
  }

  print('get number end');
}
