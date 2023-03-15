import 'package:flutter/foundation.dart';

class SliderLogic with ChangeNotifier {
  double _value = 0.0;
  double get value => _value;

  void setValue(double value) {
    _value = value;
    notifyListeners();
  }
}
