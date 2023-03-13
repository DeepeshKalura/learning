import '../service/calling_provider.dart';

class CallingLogic {
  final ProviderService _provider = ProviderService();

  void increment() {
    _provider.increment();
  }

  void decrement() {
    _provider.decrement();
  }

  int get counter => _provider.counter;
}
