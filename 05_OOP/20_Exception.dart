void main(List<String> args) {
  try {
    throwException();
  } on MyException catch (e) {
    print('caught exception: $e');
  } finally {
    print('finally called');
  }

  try {
    String? string;
    string!.length;
  } on Exception catch (e) {
    print('caught exception: ${e.runtimeType}');
  } on Error catch (e) {
    print('caught error: ${e.runtimeType}');
  } finally {
    print('finally called');
  }

  try {
    String? string;
    string!.length;
  } catch (e) {
    print('caught exception: ${e.runtimeType}');
  } finally {
    print('finally called');
  }
}

//  自定义异常
class MyException implements Exception {
  final String msg;

  const MyException(this.msg);
}

void throwException() {
  throw MyException('Just Test');
}
