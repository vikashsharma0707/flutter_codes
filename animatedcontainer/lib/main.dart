
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimateContainerExample(),
    );
  }
}

class AnimateContainerExample extends StatefulWidget {
  const AnimateContainerExample({super.key});

  @override
  State<AnimateContainerExample> createState() => _AnimateContainerExampleState();
}

class _AnimateContainerExampleState extends State<AnimateContainerExample> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  void _changeProperties() {
    setState(() {
      _width = _width == 100 ? 200 : 100;
      _height = _height == 100 ? 200 : 100;
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
      _borderRadius = _borderRadius == BorderRadius.circular(8)
          ? BorderRadius.circular(50)
          : BorderRadius.circular(8);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedContainer Example")),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          duration: const Duration(seconds: 1), // ✅ duration used correctly
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeProperties,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
