void main(List<String> args) {
  print(min<String>('a', 'b'));
  print(min<int>(1, 2));
}

//  泛型方法
//  使用extends限定泛型类型
T min<T extends Comparable>(T a, T b) {
  return a.compareTo(b) < 0 ? a : b;
}
