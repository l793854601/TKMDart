//  await必须在async修饰的函数中使用
void main(List<String> args) async {
  print('futureTestWithAwait start');
  try {
    var url = await getUrl();
    print('url: $url');
  } catch (e) {
    print(e);
  } finally {
    print('completed');
  }

  try {
    var name = await getName();
    print('name: $name');
  } catch (e) {
    print(e);
  } finally {
    print('completed');
  }

  try {
    var owner = await getOwner();
    print('url: $owner');
  } catch (e) {
    print(e);
  } finally {
    print('completed');
  }

  print('futureTestWithAwait end');
}

Future<String> getUrl() {
  //  创建Future方式1
  return Future(() => 'https://www.baidu.com');
}

Future<String> getName() {
  //  创建Future方式2（返回error）
  return Future.error(Exception('Just Test error'));
}

Future<String> getOwner() {
  //  创建Future方式3
  return Future.delayed(Duration(seconds: 2), () {
    return 'TKM';
  });
}