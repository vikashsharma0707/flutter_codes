// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//    var time = DateTime.now();
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Container(
//   width: 200,
//   height: 200,
//   child: Column(
//     children: [
//       Text("Time is $time",style: TextStyle(color: Colors.blue),),
//       Text("Time is ${time.year}",style: TextStyle(color: Colors.blue),),
//        Text("Time is ${time.day}",style: TextStyle(color: Colors.blue),),
//         Text("Time is ${time.weekday}",style: TextStyle(color: Colors.blue),),
//          Text("Time is ${time.month}",style: TextStyle(color: Colors.blue),),
//       ElevatedButton(
//         onPressed: () {
//           setState(() {
//             // yahan apna logic likho
//           });
//         },
//         child: Text("Click here"),
//       ),
//     ],
//   ),
// ),

//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }




import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DateTimeExample(),
  ));
}

class DateTimeExample extends StatefulWidget {
  @override
  _DateTimeExampleState createState() => _DateTimeExampleState();
}

class _DateTimeExampleState extends State<DateTimeExample> {
  DateTime time = DateTime.now();

  void updateTime() {
    setState(() {
      time = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DateTime Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Year: ${time.year}", style: TextStyle(color: Colors.blue)),
            Text("Month: ${time.month}", style: TextStyle(color: Colors.blue)),
            Text("Day: ${time.day}", style: TextStyle(color: Colors.blue)),
            Text("Weekday: ${time.weekday}", style: TextStyle(color: Colors.blue)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: updateTime,
              child: Text("Click here"),
            ),
          ],
        ),
      ),
    );
  }
}
