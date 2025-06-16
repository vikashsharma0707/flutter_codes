import 'package:flutter/material.dart';
import 'package:navigation/HomeScreen.dart';

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
      home: const Homescreen(),
    );
  }
}






// ✅ 📌 Folder Structure Summary
// main.dart → सिर्फ MyApp और route setup के लिए।

// screens/home_screen.dart → पहला Screen.

// screens/second_screen.dart → दूसरा Screen.

// ✅ 📌 कैसे काम करेगा?
// 1️⃣ App HomeScreen से start होगा।
// 2️⃣ Button दबाओ → SecondScreen खुलेगा।
// 3️⃣ SecondScreen से Back Button दबाओ → वापस HomeScreen आ जाओगे।

// ✅ 💡 Bonus: Good Practices
// ✅ हर Screen अलग file में रखो → Code readable और maintainable रहता है।
// ✅ screens/ folder में सारी screens रखो।
// ✅ widgets/ folder में custom widgets रख सकते हो।
// ✅ routes और constants का folder भी बना सकते हो।
