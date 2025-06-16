import 'package:flutter/material.dart';
import 'package:navigation/AboutScreen.dart';


class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is home page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Goto About page"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Aboutscreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
