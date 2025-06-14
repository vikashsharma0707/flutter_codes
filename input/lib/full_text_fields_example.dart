import 'package:flutter/material.dart';

class FullTextFieldsExample extends StatefulWidget {
  const FullTextFieldsExample({Key? key}) : super(key: key);

  @override
  State<FullTextFieldsExample> createState() => _FullTextFieldsExampleState();
}

class _FullTextFieldsExampleState extends State<FullTextFieldsExample> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField Example')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Email TextField
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Enter Email Here...',
                prefixIcon: Icon(Icons.email),
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                disabledBorder: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Password TextField
            TextField(
              controller: passwordController,
              obscureText: !isPasswordVisible,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hintText: 'Enter Password',
                prefixIcon: const Icon(Icons.lock),
                focusedBorder: const OutlineInputBorder(),
                enabledBorder: const OutlineInputBorder(),
                disabledBorder: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                // print values
                print('Email: ${emailController.text}');
                print('Password: ${passwordController.text}');
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
