import 'package:flutter/foundation.dart';

class ProviderService with ChangeNotifier {
  int counter;
  ProviderService({
    this.counter = 0,
  });

  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }
}
