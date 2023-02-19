//  全局变量
var globalNum = 100;

//  参考Swift中的局部函数（嵌套函数）
void main(List<String> args) {
  //  main函数内的局部函数
  void printInfo() {
    //  printInfo函数内的局部变量，外部不可访问
    var localNum = 10;
    print(localNum);
    //  内部作用域可访问外部作用域变量
    print(globalNum);
  }

  //  调用局部函数
  printInfo();

  //  闭包
  //  将闭包想象成类
  Function parent() {
    //  将money想象成类中的属性
    var money = 1000;

    return () {
      money -= 10;
      print(money);
    };
  }

  var p = parent();
  p();
  p();
  p();
}
