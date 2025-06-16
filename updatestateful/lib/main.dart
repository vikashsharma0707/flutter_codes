import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculation Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Calculation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController no1Controller = TextEditingController();
  final TextEditingController no2Controller = TextEditingController();

  double? result;

  void add() {
    double num1 = double.tryParse(no1Controller.text) ?? 0;
    double num2 = double.tryParse(no2Controller.text) ?? 0;
    setState(() {
      result = num1 + num2;
    });
  }

  void sub() {
    double num1 = double.tryParse(no1Controller.text) ?? 0;
    double num2 = double.tryParse(no2Controller.text) ?? 0;
    setState(() {
      result = num1 - num2;
    });
  }

  void multiply() {
    double num1 = double.tryParse(no1Controller.text) ?? 0;
    double num2 = double.tryParse(no2Controller.text) ?? 0;
    setState(() {
      result = num1 * num2;
    });
  }

  void divide() {
    double num1 = double.tryParse(no1Controller.text) ?? 0;
    double num2 = double.tryParse(no2Controller.text) ?? 0;
    setState(() {
      if (num2 == 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Cannot divide by zero')),
        );
        result = null;
      } else {
        result = num1 / num2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: no1Controller,
              decoration: const InputDecoration(hintText: "Enter first number"),
            ),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              controller: no2Controller,
              decoration: const InputDecoration(hintText: "Enter second number"),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: add,
                  child: const Text("Add"),
                ),
                ElevatedButton(
                  onPressed: sub,
                  child: const Text("Sub"),
                ),
                ElevatedButton(
                  onPressed: multiply,
                  child: const Text("Multiply"),
                ),
                // ElevatedButton(
                //   onPressed: divide,
                //   child: const Text("Divide"),
                // ),

               ElevatedButton(
  onPressed: () {
    divide();
  },
  child: Text("Divide"),
)

              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Result: ${result ?? ''}",
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
