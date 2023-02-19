//  as：给库添加前缀，解决命名冲突问题
import 'lib/common.dart' as Common;
import 'lib/function.dart' as Fun;

void main(List<String> args) {
  Common.f1();
  Common.f2();
  Common.f3();

  Fun.f1();
  Fun.f2();
  Fun.f3();

  var p = Fun.Person();
  p.show();
}
