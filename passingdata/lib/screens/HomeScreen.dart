import 'package:flutter/material.dart';
import 'package:passingdata/screens/AboutScreen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: "Enter your text",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String userInput = _controller.text;

                // Navigate with user input
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Aboutscreen(data: userInput),
                  ),
                );
              },
              child: const Text("Send to Second Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
