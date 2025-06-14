// import 'package:flutter/material.dart';

// // ✅ App का entry point (main function)
// void main() {
//   runApp(const MyApp());
// }

// // ✅ MyApp Widget => Root widget, jo MaterialApp banata hai
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false, // Debug banner हटाता है
//       home: const MyHomePage(), // Home page load karega
//     );
//   }
// }

// // ✅ MyHomePage Widget => Main screen ka layout
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Custom Widget'),
//       ),
//       // ✅ Body mein Column hai => 3 parts me split
//       body: Column(
//         children: [
//           // ✅ 1st Part: Horizontal CircleAvatar List
//           Expanded(
//             flex: 2, // Iska size kam hai
//             child: Container(
//               color: Colors.blue, // Background blue
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal, // Horizontally scrollable
//                 itemCount: 10, // 10 items
//                 itemBuilder: (context, index) => Padding(
//                   padding: const EdgeInsets.all(11.0), // Gap around avatar
//                   child: SizedBox(
//                     width: 100, // Har avatar ka width fix
//                     child: CircleAvatar(
//                       backgroundColor: Colors.green, // Green color
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           // ✅ 2nd Part: Vertical ListTile list
//           Expanded(
//             flex: 4, // Ye section bada hai
//             child: Container(
//               color: Colors.orange, // Background orange
//               child: ListView.builder(
//                 itemCount: 5, // 5 list items
//                 itemBuilder: (context, index) => ListTile(
//                   leading: CircleAvatar(
//                     backgroundColor: Colors.green, // Green circle
//                   ),
//                   title: const Text("Name"),
//                   subtitle: const Text("Mob No"),
//                   trailing: const Icon(Icons.delete), // Right side icon
//                 ),
//               ),
//             ),
//           ),

//           // ✅ 3rd Part: Grid of Boxes
//           Expanded(
//             flex: 3, // 3rd section ka size medium
//             child: Container(
//               color: Colors.blue, // Background blue
//               child: GridView.builder(
//                 itemCount: 6, // Total 6 boxes
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3, // 3 boxes per row
//                   childAspectRatio: 1, // Square boxes
//                 ),
//                 itemBuilder: (context, index) => Container(
//                   margin: const EdgeInsets.all(8), // Space between boxes
//                   color: Colors.green, // Box color green
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// 📌 Detailed Explanation (in Hindi)
// Widget	Explanation
// MaterialApp	Ye Flutter ka root widget hai jo Material Design ka support deta hai.
// Scaffold	Ye basic screen structure banata hai — jaise app bar, body, drawer, etc.
// AppBar	Upar ka blue bar jisme title hai "Custom Widget".
// Column	Screen ko 3 vertical sections mein divide karta hai.
// Expanded	Ye batata hai ki har section kitni space lega (flex value se).
// Container	Background color set karta hai aur child widgets ko wrap karta hai.
// ListView.builder	Repeated widgets banata hai list ke liye. Pehla horizontal hai, dusra vertical.
// CircleAvatar	Circular shape ka widget banata hai — yahi green circles hai.
// ListTile	Ek horizontal row jo leading (circle), title (Name), subtitle (Mob No), aur trailing (delete icon) show karta hai.
// GridView.builder	Grid banata hai jisme har box square hai.

// ✅ 3 Section ka Summary
// Section	Flex	Color	Content
// Top	flex: 2	Blue	Horizontal Circle Avatars
// Middle	flex: 4	Orange	Vertical ListTiles
// Bottom	flex: 3	Blue	Grid of Green Boxes

// ✨ Kaise Kaam Kare:
// 1️⃣ flutter run karo.
// 2️⃣ Top pe horizontally scrollable green circles dikhenge.
// 3️⃣ Middle mein vertical contact list hai.
// 4️⃣ Bottom mein green boxes grid hai.




import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ✅ Main App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

// ✅ Home Page => Ye bas structure ko manage karta hai
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widget'),
      ),
      body: Column(
        children: const [
          Expanded(
            flex: 2,
            child: HorizontalCircles(),
          ),
          Expanded(
            flex: 4,
            child: VerticalList(),
          ),
          Expanded(
            flex: 3,
            child: GridBoxes(),
          ),
        ],
      ),
    );
  }
}

// ✅ 1. HorizontalCircles Widget
class HorizontalCircles extends StatelessWidget {
  const HorizontalCircles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(11.0),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}

// ✅ 2. VerticalList Widget
class VerticalList extends StatelessWidget {
  const VerticalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
          ),
          title: const Text("Name"),
          subtitle: const Text("Mob No"),
          trailing: const Icon(Icons.delete),
        ),
      ),
    );
  }
}

// ✅ 3. GridBoxes Widget
class GridBoxes extends StatelessWidget {
  const GridBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(8),
          color: Colors.green,
        ),
      ),
    );
  }
}




// ✅ Is Code mein Splitting kaise hui?
// Widget	Kya karta hai
// HorizontalCircles	Top horizontal scroll list ke liye custom widget
// VerticalList	Middle contact list ke liye custom widget
// GridBoxes	Bottom grid boxes ke liye custom widget

// 📌 Fayda kya hua?
// 1️⃣ Code reusable & readable ho gaya
// 2️⃣ Har section apne aap testable ho gaya
// 3️⃣ Future mein agar changes karne hai to sirf us section mein changes karo.

// 🔑 Key point
// Flutter mein Splitting ka matlab hota hai: bade widgets ko chhote custom widgets mein todna, taaki structure clear ho aur maintenance easy ho.

// Agar chaho to main isko aur bhi Modular bana ke de sakta hoon — bolo! 🚀✨