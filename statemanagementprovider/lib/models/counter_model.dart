class CounterModel {
  int _count = 0;

  // Proper getter
  int get count => _count;

  // Proper methods
  void increment() {
    _count++;
  }

  void decrement() {
    _count--;
  }

  void reset() {
    _count = 0;
  }
}
