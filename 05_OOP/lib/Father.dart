class Father {
  String name;
  int money;

  Father(this.name, this.money);

  void consume(int money) {
    this.money -= money;
  }
}