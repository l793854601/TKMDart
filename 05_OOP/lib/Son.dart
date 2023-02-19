
//  子类可继承父类非私有的成员，不能访问父类的私有成员
import 'Father.dart';

class Son extends Father {
  //  使用初始化列表，调用父类构造器
  Son(String name, int money) : super(name, money);

  @override
  void consume(int money) {
    this.money += money;
  }
}