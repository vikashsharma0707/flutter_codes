import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
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
      // body: Wrap(
      //   direction: Axis.vertical,
      //   spacing: 10,
      //   runSpacing: 10,
      //   alignment: WrapAlignment.spaceEvenly,
      //   children: [
      //     Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.blue,
      //     ),

      //      Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.blue,
      //     ),

      //      Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.blue,
      //     ),


      //      Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.blue,
      //     ),

      //      Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.blue,
      //     ),

      //      Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.blue,
      //     ),

      //      Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.blue,
      //     ),
      //      Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.blue,
      //     ),

      //      Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.blue,
      //     ),
      //   ],
      // ),


  body: Center(
        child: Wrap(
          spacing: 10.0, // Horizontal gap
          runSpacing: 10.0, // Vertical gap between lines
          children: [
            Chip(
              label: Text("Flutter"),
              backgroundColor: Colors.blue.shade100,
            ),
            Chip(
              label: Text("Dart"),
              backgroundColor: Colors.green.shade100,
            ),
            Chip(
              label: Text("React"),
              backgroundColor: Colors.purple.shade100,
            ),
            Chip(
              label: Text("Java"),
              backgroundColor: Colors.orange.shade100,
            ),
            Chip(
              label: Text("C++"),
              backgroundColor: Colors.red.shade100,
            ),
            Chip(
              label: Text("Python"),
              backgroundColor: Colors.teal.shade100,
            ),

             Chip(
              label: Text("Flutter"),
              backgroundColor: Colors.blue.shade100,
            ),
            Chip(
              label: Text("Dart"),
              backgroundColor: Colors.green.shade100,
            ),
            Chip(
              label: Text("React"),
              backgroundColor: Colors.purple.shade100,
            ),
            Chip(
              label: Text("Java"),
              backgroundColor: Colors.orange.shade100,
            ),
            Chip(
              label: Text("C++"),
              backgroundColor: Colors.red.shade100,
            ),
            Chip(
              label: Text("Python"),
              backgroundColor: Colors.teal.shade100,
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












// ✅ Kaise kaam karta hai:
// 🔑	Explanation
// ✅ Wrap automatically children ko horizontal mein arrange karta hai	
// ✅ Agar ek line mein jagah khatam ho jati hai, to next line bana deta hai	
// ✅ spacing se same line mein gap	
// ✅ runSpacing se line ke beech mein gap	

// 🗂️ Kab Use Karte Hain?
// Tags list

// Chips / Filters

// Responsive Grid jaisa look

// Images gallery

// Buttons jo overflow na ho

// 🎓 Key Points:
// Property	Kya karta hai
// direction	Horizontal ya Vertical wrap
// spacing	Children ke beech horizontal gap
// runSpacing	Lines ke beech vertical gap
// alignment	Children ka alignment
// runAlignment	Lines ka alignment