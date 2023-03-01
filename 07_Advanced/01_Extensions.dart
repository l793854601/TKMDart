void main(List<String> args) {
  var string = '123';
  print(string.clazzType);
  print(string.parseInt());
}

//  使用extension，为现有的类添加内容
//  可以添加getter、setter、方法
extension StringExt on String {

  //  扩展getter
  String get clazzType => runtimeType.toString();

  //  扩展方法
  int parseInt() {
    var result = 0;
    try {
      result = int.parse(this);
    } catch (e) {
      print(e);
    }
    return result;
  }
}
