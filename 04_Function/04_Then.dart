void main(List<String> args) {
  Future.value('Step1').then((value) {
    print('$value completed');
    return 'Step2';
  }).then((value) {
    print('$value completed');
    return 'Step3';
  }).then((value) {
    print('$value completed');
    print('All completed');
  });
}
