import 'package:flutter/material.dart';
import 'demo_screen.dart';

void main() {
  runApp(const RenderObjectDemo());
}

class RenderObjectDemo extends StatelessWidget {
  const RenderObjectDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Render Object Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DemoScreen(),
    );
  }
}
