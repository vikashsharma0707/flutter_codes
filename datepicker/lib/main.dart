// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp()); // ✅ App start point
// }

// // ✅ Ye hamara main App widget hai
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Date & Time Picker Example',
//       home: const DateTimePickerDemo(), // ✅ Ye hamara main screen hai
//     );
//   }
// }

// // ✅ Ye stateful widget hai jisme date aur time pick karenge
// class DateTimePickerDemo extends StatefulWidget {
//   const DateTimePickerDemo({super.key});

//   @override
//   State<DateTimePickerDemo> createState() => _DateTimePickerDemoState();
// }

// class _DateTimePickerDemoState extends State<DateTimePickerDemo> {
//   // ✅ Variables: date & time ko store karne ke liye
//   DateTime? selectedDate;
//   TimeOfDay? selectedTime;

//   // ✅ Ye function date picker ko open karta hai
//   Future<void> _selectDate(BuildContext context) async {
//     // showDatePicker ka use date pick karne ke liye hota hai
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: selectedDate ?? DateTime.now(), // default date
//       firstDate: DateTime(2000), // minimum date
//       lastDate: DateTime(2100), // maximum date
//     );

//     // Agar user ne koi date select ki hai toh state update karo
//     if (picked != null && picked != selectedDate) {
//       setState(() {
//         selectedDate = picked;
//       });
//     }
//   }

//   // ✅ Ye function time picker ko open karta hai
//   Future<void> _selectTime(BuildContext context) async {
//     // showTimePicker ka use time pick karne ke liye hota hai
//     final TimeOfDay? picked = await showTimePicker(
//       context: context,
//       initialTime: selectedTime ?? TimeOfDay.now(), // default time
//     );

//     // Agar user ne koi time select kiya hai toh state update karo
//     if (picked != null && picked != selectedTime) {
//       setState(() {
//         selectedTime = picked;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // ✅ Yahan selected date aur time ko human readable banaya gaya hai
//     String formattedDate = selectedDate == null
//         ? 'Koi date select nahi ki gayi'
//         : 'Selected Date: ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}';

//     String formattedTime = selectedTime == null
//         ? 'Koi time select nahi kiya gaya'
//         : 'Selected Time: ${selectedTime!.format(context)}';

//     // ✅ Screen pe dikhane ke liye Scaffold ka use kiya hai
//     return Scaffold(
//       appBar: AppBar(title: const Text("Date & Time Picker Demo")), // Top bar
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center, // Center pe sab kuch
//           children: [
//             Text(
//               formattedDate, // ✅ Yahan date dikh rahi hai
//               style: const TextStyle(fontSize: 20),
//             ),
//             const SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () => _selectDate(context), // ✅ Date picker open karega
//               child: const Text('Pick Date'),
//             ),
//             const SizedBox(height: 30),
//             Text(
//               formattedTime, // ✅ Yahan time dikh raha hai
//               style: const TextStyle(fontSize: 20),
//             ),
//             const SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () => _selectTime(context), // ✅ Time picker open karega
//               child: const Text('Pick Time'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ✅ Hamara main App widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

// ✅ Hamara home page jahan date & time picker hai
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ✅ Ye variables selected date & time store karenge
  DateTime? datePicked;
  TimeOfDay? timePicked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date & Time Picker Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ✅ Text jo selected date dikhayega
            Text(
              datePicked == null
                  ? 'Koi date select nahi hui'
                  : 'Selected Date: ${datePicked!.day}-${datePicked!.month}-${datePicked!.year}',
              style: const TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 10),

            // ✅ Text jo selected time dikhayega
            Text(
              timePicked == null
                  ? 'Koi time select nahi hua'
                  : 'Selected Time: ${timePicked!.hour}:${timePicked!.minute}',
              style: const TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 20),

            // ✅ Button jo date picker open karega
            ElevatedButton(
              onPressed: () async {
                // ✅ showDatePicker se calendar open hota hai
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(), // default date
                  firstDate: DateTime(2021),   // minimum date
                  lastDate: DateTime(2025),    // maximum date
                );

                if (picked != null) {
                  setState(() {
                    datePicked = picked;
                  });
                }
              },
              child: const Text('Select Date'),
            ),

            const SizedBox(height: 10),

            // ✅ Button jo time picker open karega
            ElevatedButton(
              onPressed: () async {
                // ✅ showTimePicker se clock open hota hai
                TimeOfDay? picked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(), // default time
                );

                if (picked != null) {
                  setState(() {
                    timePicked = picked;
                  });
                }
              },
              child: const Text('Select Time'),
            ),
          ],
        ),
      ),
    );
  }
}
