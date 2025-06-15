import 'package:flutter/material.dart';

class PositionWidget extends StatelessWidget {
  const PositionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      color: Colors.blue,
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
          ),
          Positioned(
            bottom: 20,
            right: 40,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
