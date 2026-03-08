import 'package:flutter/material.dart';
import '../models/counter_model.dart';

class CounterProvider with ChangeNotifier {
  final CounterModel _counterModel = CounterModel();

  int get count => _counterModel.count;

  void increment() {
    _counterModel.increment();
    notifyListeners();
  }

  void decrement() {
    _counterModel.decrement();
    notifyListeners();
  }

  void reset() {
    _counterModel.reset();
    notifyListeners();
  }
}