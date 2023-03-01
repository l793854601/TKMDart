import 'dart:isolate';
import 'dart:io';
void main(List<String> args, SendPort mainSendPort) {
  print('child isolate receive args: $args');
  mainSendPort.send('1');
  sleep(Duration(seconds: 1));
  mainSendPort.send('2');
  sleep(Duration(seconds: 1));
  mainSendPort.send('3');
  sleep(Duration(seconds: 1));
  mainSendPort.send('over');
}
