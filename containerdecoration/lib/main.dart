import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DecorationExample(),
  ));
}

class DecorationExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Decoration Examples'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [

              // Simple Color + Border + Rounded Corners + Shadow
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              ),

              // Gradient Background
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.orange],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              // Background Image
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/200'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
