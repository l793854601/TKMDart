library phone;

import 'dart:math';

//  与分库建立联系
part 'camera.dart';
part 'processor.dart';

void main() {
  var c = Camera();
  print(c.name);

  var p = Prosessor();
  print(p.name);

  print(pi);
  print(min(10, 20));
}
