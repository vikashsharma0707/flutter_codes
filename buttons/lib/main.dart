import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Button Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter All Buttons Example'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Counter Value: $_counter',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              // 1. Elevated Button
              ElevatedButton(
                onPressed: () {
                  print('ElevatedButton Pressed');
                },
                child: Text('1. ElevatedButton'),
              ),
              SizedBox(height: 10),

              // 2. Text Button
              TextButton(
                onPressed: () {
                  print('TextButton Pressed');
                },
                child: Text('2. TextButton'),
              ),
              SizedBox(height: 10),

              // 3. Outlined Button
              OutlinedButton(
                onPressed: () {
                  print('OutlinedButton Pressed');
                },
                child: Text('3. OutlinedButton'),
              ),
              SizedBox(height: 10),

              // 4. Icon Button
              IconButton(
                onPressed: () {
                  print('IconButton Pressed');
                },
                icon: Icon(Icons.favorite),
                color: Colors.red,
                tooltip: 'Like',
              ),
              SizedBox(height: 10),

              // 5. Elevated Button with Icon
              ElevatedButton.icon(
                onPressed: () {
                  print('Elevated Icon Button Pressed');
                },
                icon: Icon(Icons.send),
                label: Text('4. Send'),
              ),
              SizedBox(height: 10),

              // 6. Text Button with Icon
              TextButton.icon(
                onPressed: () {
                  print('Text Icon Button Pressed');
                },
                icon: Icon(Icons.info),
                label: Text('5. Info'),
              ),
              SizedBox(height: 10),

              // 7. Outlined Button with Icon
              OutlinedButton.icon(
                onPressed: () {
                  print('Outlined Icon Button Pressed');
                },
                icon: Icon(Icons.share),
                label: Text('6. Share'),
              ),
              SizedBox(height: 10),

              // 8. Custom Style Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                ),
                onPressed: () {
                  print('Custom Button Pressed');
                },
                child: Text('7. Custom Styled Button'),
              ),
              SizedBox(height: 20),

              Text(
                "8. Floating Action Button 👇",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
