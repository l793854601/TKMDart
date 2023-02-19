//  main函数：Dart程序的入口
//  args为可选参数，可以省略
void main(List<String> args) {
  printInfo('TKM');

  //  命名可选参数，实参与形参是按照形参名匹配的
  enableFlags();
  enableFlags(bold: true);
  enableFlags(hidden: true);
  enableFlags(bold: true, hidden: true);

  //  位置可选参数，实参与形参是按照形参的位置匹配的
  greeting('TKM');
  greeting('TKM', 10);
  greeting('TKM', 10, 'hi');

  //  Dart中，函数是一等公民（本质为Function类型的实例），可作为其他函数的入参、返回值
  void printElement(int element) => print(element);
  var list = [1, 2, 3];
  list.forEach(printElement);
}

//  函数参数：必要参数、可选参数
//  可选参数：命名可选参数、位置可选参数
//  可选参数要么有默认值，要么为可空类型（默认值为null）

//  必要参数
void printInfo(String name) => print('name: $name');

//  命名可选参数
void enableFlags({bool bold = true, bool? hidden}) {}

//  可选位置参数
void greeting(String name, [int age = 0, String? msg]) {}
