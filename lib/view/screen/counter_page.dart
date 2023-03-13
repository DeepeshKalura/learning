import 'package:flutter/material.dart';
import 'package:learning/logic/calling_logic.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});

  final CallingLogic _callingLogic = CallingLogic();

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
            child: Text(_callingLogic.counter.toString()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _callingLogic.increment();
                },
                child: const Text('Increment'),
              ),
              ElevatedButton(
                onPressed: () {
                  _callingLogic.decrement();
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
