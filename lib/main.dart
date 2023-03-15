import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  final double value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Column(
        children: [
          const Center(
            child: Text('Hello World'),
          ),
          Slider(value: value, onChanged: (val) {}),
          Expanded(
            child: Container(
              color: Colors.red,
              child: const Text('Container 1'),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: const Text('Container 2'),
            ),
          ),
        ],
      ),
    );
  }
}
