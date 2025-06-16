import 'package:flutter/material.dart';
import 'package:passingdata/screens/AboutScreen.dart';
import 'package:passingdata/screens/HomeScreen.dart';

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
      home: const HomeScreen(),
    );
  }
}




// ⚡️ How it works (in Hindi)
// ✅ TextField → User input type karta hai
// ✅ ElevatedButton → Press karte hi TextEditingController se text milta hai
// ✅ Navigator.push → Text ko SecondScreen ke constructor mein bhejta hai
// ✅ SecondScreen → Us input ko show karta hai



// 📌 Is line ka breakdown:
// Part	Meaning
// final	Iska mtlb hai: Ek baar hi value set karo, badal nahi sakte. Yaha ek hi controller banega.
// TextEditingController	Ye class jo text ko handle karegi
// _controller	Ye variable ka naam hai. Convention ke hisaab se _ lagate hain kyunki ye private rakhna hota hai (only is file/class ke liye)
// = TextEditingController();	Ye naya controller bana raha hai.


// 🔑 Common kaam:
// ✅ Read: controller.text
// ✅ Clear: controller.clear()
// ✅ Set: controller.text = "Hello";

