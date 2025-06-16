import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is home page"), // ✅ Fixed: Text widget
      ),
      body: const Center(
        child: Text("This is home screen"),
      ),
    );
  }
}
