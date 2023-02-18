void main(List<String> args) {
  //  List实现了Iterable接口
  //  实现了Iterable接口的类，都可以进行for循环遍历（参考Java中的Iterable接口）
  var nums = List.generate(10, (index) => index);

  //  for循环遍历
  for (var i = 0; i < nums.length; i++) {
    print('$i: ${nums[i]}');
  }

  //  for-in
  for (var num in nums) {
    print(num);
  }

  //  forEach
  nums.forEach((num) => {print(num)});

  //  while（参考Java中Iterator的用法）
  var iterator = nums.iterator;
  while (iterator.moveNext()) {
    print(iterator.current);
  }

  //  map（返回结果为Iterable，需要调用toList()转换为List）
  var numStrings = nums.map((element) => '$element').toList();
  print(numStrings);

  //  where：返回符合条件的元素
  var oddNum = nums.where((element) => element.isOdd).toList();
  print(oddNum);

  //  any：判断List中元素是否至少一个符合条件
  print(nums.any((element) => element.isOdd));

  //  every：判断List中元素是否都符合条件
  print(nums.every((element) => element.isOdd));

  //  扩展（参考Swift、Kotlin中flatMap的用法）
  var pairs = [
    [1, 2],
    [3, 4],
    [5, 6]
  ];
  print(pairs.expand((element) => element).toList());

  //  折叠
  //  fold/reduce
  //  fold：可以指定初始值
  //  reduce：初始值默认为集合的首个元素
  int result =
      nums.fold(0, (previousValue, element) => previousValue + element);
  print(result);
}
