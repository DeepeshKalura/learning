import 'package:flutter/material.dart';

import '../widget/show_content_bar_widget.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ShowContentBarWidget(context: context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
