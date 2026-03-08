// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Text Widget',
// //       theme: ThemeData(
// //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// //       ),
// //       home: const MyHomePage(title: 'Flutter Demo Home Page'),
// //     );
// //   }
// // }

// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({super.key, required this.title});

// //   final String title;

// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   int _counter = 0;

// //   void _incrementCounter() {
// //     setState(() {
// //       _counter++;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,

// //         title: Text(widget.title),
// //       ),

// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: SingleChildScrollView(
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               // 1. Basic Text
// //               Text('1. Basic Text', style: TextStyle(fontSize: 18)),
// //               SizedBox(height: 10),

// //               // 2. Styled Text
// //               Text(
// //                 '2. Styled Text',
// //                 style: TextStyle(
// //                   fontSize: 24,
// //                   fontWeight: FontWeight.bold,
// //                   color: Colors.blue,
// //                 ),
// //               ),
// //               SizedBox(height: 10),

// //               // 3. Italic, Underline, LetterSpacing
// //               Text(
// //                 '3. Italic, Underlined & Letter Spacing',
// //                 style: TextStyle(
// //                   fontSize: 20,
// //                   fontStyle: FontStyle.italic,
// //                   decoration: TextDecoration.underline,
// //                   letterSpacing: 2.0,
// //                   color: Colors.deepPurple,
// //                 ),
// //               ),
// //               SizedBox(height: 10),

// //               // 4. Text Align Center and Multiline
// //               Text(
// //                 '4. Flutter is Awesome!\nLet’s build something great.',
// //                 textAlign: TextAlign.center,
// //                 style: TextStyle(fontSize: 18, color: Colors.black87),
// //               ),
// //               SizedBox(height: 10),

// //               // 5. Background Color, Shadow, and MaxLines
// //               Text(
// //                 '5. Text with Shadow and Background Color',
// //                 maxLines: 2,
// //                 style: TextStyle(
// //                   fontSize: 22,
// //                   color: Colors.white,
// //                   backgroundColor: Colors.black,
// //                   shadows: [
// //                     Shadow(
// //                       offset: Offset(2, 2),
// //                       blurRadius: 3,
// //                       color: Colors.grey,
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               SizedBox(height: 10),

// //               // 6. Centered Stylish Text
// //               Center(
// //                 child: Text(
// //                   '6. Centered Stylish Text',
// //                   style: TextStyle(
// //                     fontSize: 26,
// //                     fontWeight: FontWeight.w600,
// //                     color: Colors.teal,
// //                     decoration: TextDecoration.lineThrough,
// //                   ),
// //                 ),
// //               ),
// //               SizedBox(height: 20),
// //             ],
// //           ),
// //         ),
// //       ),

// //       floatingActionButton: FloatingActionButton(
// //         onPressed: _incrementCounter,
// //         tooltip: 'Increment',
// //         child: const Icon(Icons.add),
// //       ), // This trailing comma makes auto-formatting nicer for build methods.
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Text Widget',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Text Widget Example'),
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(16),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [

//                 Text('1. Basic Text', style: TextStyle(fontSize: 18)),
//                 SizedBox(height: 10),

//                 Text(
//                   '2. Styled Text',
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.blue,
//                   ),
//                 ),
//                 SizedBox(height: 10),

//                 Text(
//                   '3. Italic & Underline',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontStyle: FontStyle.italic,
//                     decoration: TextDecoration.underline,
//                     color: Colors.deepPurple,
//                   ),
//                 ),
//                 SizedBox(height: 10),

//                 Text(
//                   '4. Flutter is Awesome!\nLet’s build something great.',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(height: 10),

//                 Text(
//                   '5. Text with Shadow',
//                   style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.white,
//                     backgroundColor: Colors.black,
//                     shadows: [
//                       Shadow(
//                         offset: Offset(2,2),
//                         blurRadius: 3,
//                         color: Colors.grey,
//                       )
//                     ],
//                   ),
//                 ),

//                 SizedBox(height: 20),

//                 Center(
//                   child: Text(
//                     '6. Center Text',
//                     style: TextStyle(
//                       fontSize: 26,
//                       color: Colors.teal,
//                     ),
//                   ),
//                 ),

//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Text",
    home: Scaffold(
      appBar: AppBar(
        title: Text("example"),
      ),
      body: Padding(padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("hello",style: TextStyle(
              fontSize: 10,fontWeight: FontWeight.bold,color: Colors.blue
            ),),
            
          ],
        ),
      ),
      
      ),
      
    ),

   );
  }

}