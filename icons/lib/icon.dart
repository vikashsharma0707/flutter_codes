import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IconWidgetDemo extends StatelessWidget {
  const IconWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: const [
        Icon(
          Icons.home,
          size: 30,
          color: Colors.red,
        ),
        Icon(
          Icons.favorite,
          size: 30,
          color: Colors.red,
        ),
        Icon(
          Icons.star, // ✅ Fixed typo here
          size: 30,
          color: Colors.red,
        ),
        Icon(
          Icons.phone,
          size: 30,
          color: Colors.red,
        ),
      ],
    );
  }
}
