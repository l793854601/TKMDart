void main(List<String> args) {
  var rect = Rect(0, 0, 100, 100);
  //  访问setter
  rect.width = 120;
  rect.height = 150;
  //  访问getter
  print(rect.area);
}

class Rect {
  //  每个属性默认都有getter方法
  //  非final的属性默认有setter方法
  int top, left, bottom, right;

  Rect(this.top, this.left, this.right, this.bottom);

  //  自定义setter
  set width(int width) => right = left + width;

  set height(int height) => bottom = top + height;

  //  自定义getter
  int get width => right - left;

  int get height => bottom - top;

  int get area => (right - left) * (bottom - top);
}
