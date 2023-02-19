void main(List<String> args) {
  Phone xiaomi = Xiaomi();
  print(xiaomi.camera);
  print(xiaomi.processor);
  xiaomi.call();

  Phone huawei = Huawei();
  print(huawei.camera);
  print(huawei.processor);
  huawei.call();
}

abstract class Phone {
  String get processor;
  String get camera;

  void call();

  //  抽象类中可以有非抽象方法（新版Dart中，实现类必须重写非抽象方法）
  //  一般抽象类用于接口的定义
  // String description() {
  //   return '处理器：$processor, 摄像头：$camera';
  // }
}

class Xiaomi implements Phone {
  @override
  String get processor => '骁龙888';

  @override
  String get camera => '三星摄像头';

  @override
  void call() {
    print('Xiaomi call');
  }
}

class Huawei implements Phone {
  @override
  String get processor => '麒麟990';

  @override
  String get camera => '莱卡摄像头';

  @override
  void call() {
    print('Xiaomi call');
  }
}
