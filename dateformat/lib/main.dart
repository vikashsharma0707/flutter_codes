// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter DateFormat Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const MyHomePage(title: 'Flutter DateFormat Example'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // ✅ Define now in State
//   DateTime now = DateTime.now();

//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Format date and time
//     String formattedDate = DateFormat('dd/MM/yyyy').format(now);
//     String formattedTime = DateFormat('hh:mm:ss a').format(now);
//     String formattedFull = DateFormat('EEEE, MMMM d, y').format(now);

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Date: $formattedDate', style: TextStyle(fontSize: 20)),
//             Text('Time: $formattedTime', style: TextStyle(fontSize: 20)),
//             Text('Full: $formattedFull', style: TextStyle(fontSize: 20)),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   now = DateTime.now();
//                 });
//               },
//               child: Text('Refresh Time'),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DateFormat Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DateFormat Example")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text('y: ${DateFormat('y').format(now)}'),
            Text('yy: ${DateFormat('yy').format(now)}'),
            Text('yyyy: ${DateFormat('yyyy').format(now)}'),
            Text('M: ${DateFormat('M').format(now)}'),
            Text('MM: ${DateFormat('MM').format(now)}'),
            Text('MMM: ${DateFormat('MMM').format(now)}'),
            Text('MMMM: ${DateFormat('MMMM').format(now)}'),
            Text('d: ${DateFormat('d').format(now)}'),
            Text('dd: ${DateFormat('dd').format(now)}'),
            Text('E: ${DateFormat('E').format(now)}'),
            Text('EEEE: ${DateFormat('EEEE').format(now)}'),
            Text('H: ${DateFormat('H').format(now)}'),
            Text('HH: ${DateFormat('HH').format(now)}'),
            Text('h: ${DateFormat('h').format(now)}'),
            Text('hh: ${DateFormat('hh').format(now)}'),
            Text('m: ${DateFormat('m').format(now)}'),
            Text('mm: ${DateFormat('mm').format(now)}'),
            Text('s: ${DateFormat('s').format(now)}'),
            Text('ss: ${DateFormat('ss').format(now)}'),
            Text('a: ${DateFormat('a').format(now)}'),
            Text('jms: ${DateFormat.jm().format(now)}'),
            Text('yMd: ${DateFormat.yMd().format(now)}'),
            Text('yMMMd: ${DateFormat.yMMMd().format(now)}'),
            Text('yMMMMd: ${DateFormat.yMMMMd().format(now)}'),
            Text('yMEd: ${DateFormat.yMEd().format(now)}'),
            Text('yMMMEd: ${DateFormat.yMMMEd().format(now)}'),
            Text('yMMMMEEEEd: ${DateFormat.yMMMMEEEEd().format(now)}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  now = DateTime.now();
                });
              },
              child: const Text('Refresh Time'),
            )
          ],
        ),
      ),
    );
  }
}
