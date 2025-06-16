import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Range Slider Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RangeSliderDemo(),
    );
  }
}

class RangeSliderDemo extends StatefulWidget {
  const RangeSliderDemo({super.key});

  @override
  State<RangeSliderDemo> createState() => _RangeSliderDemoState();
}

class _RangeSliderDemoState extends State<RangeSliderDemo> {
  // ✅ RangeValues holds the start & end values.
  RangeValues _currentRangeValues = const RangeValues(20, 60);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Range Slider Example")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              "Select Range:",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            
            // ✅ The RangeSlider
            RangeSlider(
              values: _currentRangeValues,
              min: 0,
              max: 100,
              divisions: 10, // optional: divides slider into steps
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
            
            const SizedBox(height: 20),
            Text(
              "Selected Range: ${_currentRangeValues.start.round()} - ${_currentRangeValues.end.round()}",
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
