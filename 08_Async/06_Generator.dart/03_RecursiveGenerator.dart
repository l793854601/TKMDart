void main(List<String> args) {
  getRange(1, 5).forEach((element) => print('range next: $element'));
}

//  递归生成器（yield*）
//  yield*是指针，指向递归函数
Iterable<int> getRange(int start, int end) sync* {
  if (start <= end) {
    yield start;
    //  实现递归调用
    // for (final val in getRange(start + 1, end)) {
    //   yield val;
    // }
    yield* getRange(start + 1, end);
  }
}
