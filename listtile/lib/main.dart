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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  // ✅ Fix: Declare names list here so it is accessible in build()
  final List<String> names = ['Ram', 'Shyam', 'Hari', 'Gita'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      // ✅ Use ListView.builder with names list

// Basic Structure of ListTile

// ListTile(
//   leading: Icon(Icons.person),   // icon ya image
//   title: Text('John Doe'),       // main text
//   subtitle: Text('Developer'),   // optional extra line
//   trailing: Icon(Icons.arrow_forward),  // right side icon/button
//   onTap: () {
//     print('Tapped!');
//   },
// )



      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(names[index]),
            onTap: () {
              print('${names[index]} tapped');
            },
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
