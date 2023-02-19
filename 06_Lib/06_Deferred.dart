import 'lib/function.dart' deferred as Func;

void main(List<String> args) {
  print(1);
  greet();
  print(2);
  print(3);
}

Future<void> greet() async {
  //  延迟加载的库，需要先调用loadLibrary加载库，之后才能使用其中的函数
  //  延迟加载库，可以减少App的启动时间
  //  loadLibrary：返回值为Future类型
  await Func.loadLibrary();
  Func.f1();
  Func.f2();
}
