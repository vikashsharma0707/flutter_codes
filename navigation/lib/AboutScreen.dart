



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navigation/HomeScreen.dart';

class Aboutscreen extends StatelessWidget{
  const Aboutscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
  title: const Text("This is aboutpage"),
 ),


 body:Center(

   child:ElevatedButton(
    child: const Text("This is aboutpge"),
    onPressed: () {
      Navigator.pop(
        context,
        MaterialPageRoute(builder: (context) => const Homescreen(),)
      );
    },
   )
 ),
    );
  }
}