void main(List<String> args) {
  print('main start');

  apiRequest().then((value) => print('Login result: $value'));

  print('main end');
}


Future<bool> apiRequest() async {
  print('api request start');
  var result = true;
  try {
    //  使用async-await，简化异步操作，防止回调地狱
    int userId = await getUserId('TKM', '123456');
    String userName = await getUsername(userId);
    print('Login success, userName: $userName');
  } catch (e) {
    print('Login failed, error: $e');
    result = false;
  } finally {
    print('api request finished');
  }
  return result;
}

Future<int> getUserId(String username, String password) {
  return Future.delayed(Duration(seconds: 1), () => 10);
}

Future<String> getUsername(int userId) {
  return Future.delayed(Duration(seconds: 1), () => 'TKM');
}
