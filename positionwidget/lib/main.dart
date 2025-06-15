import 'package:flutter/material.dart';
import 'package:positionwidget/positionwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
      
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

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
    body: Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center, // Row को बीच में रखने के लिए
    children: [
      Text(
        "Counter $_counter",
        style: const TextStyle(fontSize: 24),
      ),

      const SizedBox(width: 20), // Text और Buttons के बीच gap

      FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: const Icon(Icons.add),
      ),

      const SizedBox(width: 10), // Buttons के बीच gap

      FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter--;
          });
        },
        child: const Icon(Icons.remove), // ✅ सही icon
      ),

      const SizedBox(width: 10), // Buttons के बीच gap

      FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter = 0; // ✅ सही syntax
          });
        },
        child: const Icon(Icons.refresh), // ✅ सही icon
      ),
    ],
  ),
),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
