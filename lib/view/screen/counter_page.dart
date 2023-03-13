import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../service/calling_provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  // final myProvider = Provider.of<ProviderService>;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Column(
        children: [
          const Center(
            child: Text('Counter'),
          ),
          Center(
            child: Text('${context.watch<ProviderService>().counter}'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<ProviderService>().increment();
                },
                child: const Text('Increment'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<ProviderService>().decrement();
                },
                child: const Text('Decrement'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
