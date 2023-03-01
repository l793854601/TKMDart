import 'dart:math';

void main(List<String> args) {
  IntList intList = [1, 2, 3];
  print(intList.runtimeType);

  ListMapper<int> listMapper = {
    1: [1, 2, 3],
    2: [1, 2, 3],
    3: [1, 2, 3],
  };
  print(listMapper.runtimeType);

  Compare<int> intCompare = (a, b) => a.compareTo(b);
  print(intCompare(10, 20));

  Compare<String> stringCompare = (a, b) => a.compareTo(b);
  print(stringCompare('a', 'A'));
}

//  Dart 2.13之后，可以定义非函数类型的typedef
typedef IntList = List<int>;
typedef ListMapper<X> = Map<X, List<X>>;

//  常见的用法：为函数起别名
typedef Compare<T> = int Function(T a, T b);
