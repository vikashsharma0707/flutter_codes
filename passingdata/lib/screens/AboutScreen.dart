



import 'package:flutter/material.dart';

class Aboutscreen extends StatelessWidget{

  final String data;
  const Aboutscreen({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About screen"),),

    body: Center(
      child: Text(
        "Recived ${data}",style: TextStyle(color: Colors.red,fontSize: 30),
        ),
    ),
    );
  }
}