void main(List<String> args) {
  //  声明字符串
  //  单引号
  var str1 = 'hello world';
  print(str1);

  //  双引号
  var str2 = "hello world";
  print(str2);

  //  \转义符
  var str3 = 'It\'s easy to learn Dart while you known JavaScript';
  print(str3);

  //  三个引号，创建多行字符串
  var str4 = '''
    hello
    world
  ''';
  print(str4);

  //  常见操作
  //  字符串拼接
  print(str1 + str2);
  //  模板字符串
  print('$str1 - $str2');

  //  字符串分割（返回List<String>）
  print('a b c'.split(' '));

  //  字符串的裁切（参考Java中的trim()方法，只会除去首尾的空格，中间的空格不会除去）
  print(' a b c '.trim());
  print(' a b c '.trimLeft());
  print(' a b c '.trimRight());

  //  判断字符串是否为空字符串
  print(''.isEmpty);
  print(''.isNotEmpty);

  //  字符串替换
  print(str1.replaceAll('world', 'dart'));

  //  正则替换
  print('a1b2c3d4'.replaceAll(RegExp(r'\d+'), '#'));

  //  正则匹配
  var isPhone = RegExp(r'^1\d{10}$');
  print(isPhone.hasMatch('13333333333'));
  print(isPhone.hasMatch('188888888'));

  //  查找字符串
  print(str1.contains('hello'));
  print(str1.contains('Hello'));

  //  定位字符串
  print(str1.indexOf('l'));
  print(str1.lastIndexOf('l'));
}
