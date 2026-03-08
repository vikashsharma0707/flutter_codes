import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementprovider/widgets/counter_widget.dart';
import '../providers/counter_provider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your Count:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Text(
              '${counterProvider.count}',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CounterButton(
                  icon: Icons.remove,
                  onPressed: counterProvider.decrement,
                ),
                const SizedBox(width: 16),
                CounterButton(
                  icon: Icons.add,
                  onPressed: counterProvider.increment,
                ),

                CounterButton(
                  icon: Icons.refresh,
                  onPressed: counterProvider.reset,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}