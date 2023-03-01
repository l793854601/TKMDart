void main(List<String> args) {
  var phone = Phone('18888888888');
  phone.call();
  phone();
}

class Phone {
  final String number;

  const Phone(this.number);

  //  声明call()方法，允许使用类似函数调用的方式来使用该类的实例
  //  Dart中，函数的类型为Function，内部有call()方法
  void call() {
    print('Calling $number');
  }
}
