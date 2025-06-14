// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(home: MyInputPage()));
// }

// class MyInputPage extends StatelessWidget {
//   const MyInputPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Custom TextField'),
//       ),
//       body: Center(
//         child: Container(
//           width: 300,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Enter text',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(21),
//                     borderSide: const BorderSide(
//                       color: Colors.deepOrange,
//                       width: 2,
//                     ),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(21),
//                     borderSide: const BorderSide(
//                       color: Colors.deepOrange,
//                       width: 2,
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(21),
//                     borderSide: const BorderSide(
//                       color: Colors.deepOrange,
//                       width: 2,
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Another input',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(21),
//                     borderSide: const BorderSide(
//                       color: Colors.deepOrange,
//                       width: 2,
//                     ),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(21),
//                     borderSide: const BorderSide(
//                       color: Colors.deepOrange,
//                       width: 2,
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(21),
//                     borderSide: const BorderSide(
//                       color: Colors.deepOrange,
//                       width: 2,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';
import 'full_text_fields_example.dart'; // ye dusri file hai

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FullTextFieldsExample(),
    );
  }
}
