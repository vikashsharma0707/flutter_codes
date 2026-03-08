import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementprovider/providers/counter_provider.dart';
import 'package:statemanagementprovider/screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const MyApp(),
    ),
  );
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

// Ye proper State class hai
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
