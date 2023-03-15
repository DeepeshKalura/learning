import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../logic/slider_logic.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Hello World'),
          ),
          Consumer(
            builder: (context, SliderLogic sliderLogic, child) => Slider(
              min: 0.0,
              max: 1.0,
              value: sliderLogic.value,
              onChanged: (val) {
                sliderLogic.setValue(val);
              },
            ),
          ),
          Consumer(
            builder: (context, SliderLogic sliderLogic, child) => Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.red.withOpacity(sliderLogic.value),
                    child: const Text('Container 1'),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.green.withOpacity(sliderLogic.value),
                    child: const Text('Container 2'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
