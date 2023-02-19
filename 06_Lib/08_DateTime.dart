void main(List<String> args) {
  //  获取当前时间
  var now = DateTime.now();
  print(now.timeZoneOffset);

  //  通过普通构造函数创建时间
  var d = DateTime(2023, 2, 19, 20, 20);
  print(d);

  //  通过字符串解析时间
  //  格式参考api提供的示例
  var d1 = DateTime.parse('2023-02-19 20:20:00');
  print(d1);
  var d2 = DateTime.parse('20230219 20:20:00');
  print(d2);

  //  时间增量
  print(now.add(Duration(hours: 2)));
  print(now.add(Duration(days: -3)));

  //  时间比较
  print(d1.isAfter(d2)); //  d1是否在d2之后
  print(d1.isBefore(d2)); //  d1是否在d2之前
  print(d1.isAtSameMomentAs(d2)); //  d1与d2是否相同

  //  时间差
  var d3 = DateTime(2023, 1, 1);
  var d4 = DateTime(2023, 2, 19);
  var difference = d3.difference(d4);
  print('${difference.inDays}, ${difference.inHours}');

  //  时间戳
  print(now.millisecondsSinceEpoch); //  13位，单位：毫秒
  print(now.microsecondsSinceEpoch); //  16位，单位：微秒

  //  格式化
  //  padLeft：左边补位
  //  width：位数
  //  padding：补位内容
  print(now.month.toString().padLeft(2, '0'));
}
