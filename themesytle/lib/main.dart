// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         textTheme: const TextTheme(
//           displayLarge: TextStyle(
//             color: Colors.red,
//             fontWeight: FontWeight.bold,
//             fontSize: 32,
//           ),
//         ),
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             "This is displayLarge",
//             style: Theme.of(context).textTheme.displayLarge,
//           ),
//           const SizedBox(height: 10),
//           const Text("Normal Text 1"),
//           const Text("Normal Text 2"),
//           const Text("Normal Text 3"),
//           const Text("Normal Text 4"),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }





// lib/main.dart

import 'package:flutter/material.dart';
import 'theme.dart'; // 👈 Import karo

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Themed App',
      theme: AppTheme.lightTheme, // 👈 Custom Theme use
      darkTheme: AppTheme.darkTheme, // 👈 Dark theme bhi
      themeMode: ThemeMode.system, // 👈 System se light/dark
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Theme Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('This is 11 size', style: AppTextStyles.mTextStyle11()),
            Text('This is 16 size', style: AppTextStyles.mTextStyle16()),
            Text('This is 21 size', style: AppTextStyles.mTextStyle21()),
          ],
        ),
      ),
    );
  }
}
