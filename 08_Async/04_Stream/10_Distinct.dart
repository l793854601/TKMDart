void main(List<String> args) {
  Stream.fromIterable([1, 2, 2, 3, 4, 5, 3, 5, 6, 6, 6, 7, 8, 9]) 
    //  去掉与前一个重复的元素（本质为当前元素与前一个元素相比，因此不能去掉不连续的重复元素）
    .distinct()
    .listen((event) => print('onData: $event'))
    .onDone(() => print('onDone'));
}