void main(List<String> args) {
  //  字面量
  var nums = {1, 2, 2, 3}; //  Set中不存在重复的元素
  print(nums);

  //  工厂工造函数
  var fruits = Set();
  fruits.add('香蕉');
  fruits.add('苹果');
  fruits.add('橘子');
  print(fruits);
  //  Set转换为List
  print(fruits.toList());

  //  使用Set的特性，给List去重
  var myNums = [1, 2, 2, 3, 3, 4, 5].toSet().toList();
  print(myNums);

  //  集合特有的操作
  var num1 = {1, 2, 3, 4, 5, 6};
  var num2 = {3, 4, 5, 6, 7};

  //  交集
  print(num1.intersection(num2));
  //  并集
  print(num1.union(num2));
  //  差集
  print(num1.difference(num2));

  //  返回第一个元素、最后一个元素
  //  Set中的元素是无序的，不能用索引取值
  print(num1.first);
  print(num1.last);
}
