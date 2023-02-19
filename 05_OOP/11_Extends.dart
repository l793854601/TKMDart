import 'lib/Son.dart';

void main(List<String> args) {
  var son = Son('Son', 100);
  print(son.name);
  print(son.money);
  son.consume(9);
  print(son.money);
}



