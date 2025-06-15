// import 'package:customwidget/widget/button.dart';
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
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),

//       body: Center(
//         child: RoundedButton(
//           btnName: "Login",
//           icon: const Icon(Icons.login), // ✅ yaha sahi icon use karo
//           bgColor: Colors.red,
//           textStyle: const TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//           ),
//           callback: () {
//             print("Login Button Pressed!");
//           },
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



import 'package:customwidget/widget/button.dart'; // ✅ Tumhara custom RoundedButton yaha se import hoga
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

  // ✅ Ye tumhara button click pe chalega
  void onLoginPressed() {
    print("Login Button Pressed ✅");
    // yaha tum login ya dusra kaam bhi kar sakte ho
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: RoundedButton(
          btnName: "Login",
          icon: const Icon(Icons.login), // ✅ icon diya
          bgColor: Colors.red, // ✅ background color
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ), // ✅ text style diya
          callback: onLoginPressed, // ✅ button press pe ye chalega
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






// ✅ RoundedButton ka import correct hai	
// ✅ btnName diya: "Login"	
// ✅ icon diya: Icons.login	
// ✅ bgColor diya: Colors.red	
// ✅ textStyle diya: TextStyle(color: Colors.white, fontSize: 18)	
// ✅ callback diya: onLoginPressed() function	
// ✅ body mein Center lagaya taaki button properly center ho	

// ✅ Kaise Kaam Karega:
// Ye RoundedButton tumhara custom widget hai.

// Isme text, icon, color, textStyle, callback sab diya gaya.

// Jab button pe click hoga, onLoginPressed chalega aur Console pe print karega.


