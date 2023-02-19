import 'package:http/http.dart' as http;

//  使用then
// void main(List<String> args) {
//   getIPAddress()
//       .then((value) => print(value.body))
//       .catchError((error) => print(error));
// }

//  使用async、await
void main(List<String> args) async {
  try {
    http.Response response = await getIPAddress();
    print(response.body);
  } catch (e) {
    print(e);
  }
}

Future<http.Response> getIPAddress() {
  final url = 'https://httpbin.org/ip';
  return http.get(Uri.parse(url));
}
