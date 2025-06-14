// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: GridExample(),
//     );
//   }
// }

// class GridExample extends StatelessWidget {
//   const GridExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // ✅ Ye ek colors array hai - isme colors define honge
//     var arrColors = [
//       Colors.orange,
//       Colors.red,
//       Colors.green,
//       Colors.grey,
//       Colors.blue,
//       Colors.pink,
//       Colors.purple,
//       Colors.brown,
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Hello'),
//         backgroundColor: Colors.orange,
//       ),
//       body: Column(
//         children: [
//           // ✅ Container me height fix ki aur usme GridView.count dala
//           Container(
//             height: 200, // ✅ Grid ki height fix ki
//             child: GridView.count(
//               // ✅ 1 row me kitne columns honge
//               crossAxisCount: 4,

//               // ✅ Horizontal aur vertical spacing
//               crossAxisSpacing: 11,
//               mainAxisSpacing: 11,

//               // ✅ Grid ke items - yaha hum colors use kar rahe hain
//               children: [
//                 Container(color: arrColors[0]),
//                 Container(color: arrColors[1]),
//                 Container(color: arrColors[2]),
//                 Container(color: arrColors[3]),
//                 Container(color: arrColors[4]),
//                 Container(color: arrColors[5]),
//                 Container(color: arrColors[6]),
//                 Container(color: arrColors[7]),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridPropertiesExample(),
    );
  }
}

class GridPropertiesExample extends StatelessWidget {
  const GridPropertiesExample({super.key});

  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.orange,
      Colors.red,
      Colors.green,
      Colors.grey,
      Colors.blue,
      Colors.pink,
      Colors.purple,
      Colors.brown,
      Colors.teal,
      Colors.indigo,
      Colors.amber,
      Colors.cyan,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView.count - All Properties'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        height: 400,
        child: GridView.count(
          // ✅ 1 row me kitne items aayenge
          crossAxisCount: 4,

          // ✅ Horizontal spacing (columns ke beech gap)
          crossAxisSpacing: 10,

          // ✅ Vertical spacing (rows ke beech gap)
          mainAxisSpacing: 10,

          // ✅ Grid ke andar scrolling ka direction
          scrollDirection: Axis.vertical, // ya Axis.horizontal

          // ✅ Aspect ratio fix karna - width aur height ka ratio
          childAspectRatio: 1, // 1 means square

          // ✅ Padding grid ke bahar ka space
          padding: const EdgeInsets.all(20),

          // ✅ Scroll physics - kaise scroll hoga
          physics: const BouncingScrollPhysics(),

          // ✅ Whether grid should shrink to fit children
          shrinkWrap: false, // false means it will take infinite space

          // ✅ Reverse scrolling - last item top pe
          reverse: false,

          // ✅ Children: Ye grid ke items hain
          children: List.generate(
            arrColors.length,
            (index) {
              return Container(
                alignment: Alignment.center,
                color: arrColors[index],
                child: Text(
                  'Box ${index + 1}',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
