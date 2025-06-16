import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OpacityDemo(),
    );
  }
}

class OpacityDemo extends StatefulWidget {
  const OpacityDemo({super.key});

  @override
  State<OpacityDemo> createState() => _OpacityDemoState();
}

class _OpacityDemoState extends State<OpacityDemo> {
  double myOpacity = 1.0; // पहले opacity पूरी है

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foo Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myOpacity,
              duration: const Duration(seconds: 1),
              curve: Curves.linear,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // अगर opacity 1 है तो 0 कर दो, नहीं तो 1 कर दो
                  myOpacity = myOpacity == 1 ? 0 : 1;
                });
              },
              child: const Text('Toggle Opacity'),
            ),
          ],
        ),
      ),
    );
  }
}
