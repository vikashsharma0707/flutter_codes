import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CounterButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(12),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      child: Icon(icon, size: 28),
    );
  }
}