import 'package:flutter/material.dart';

// ✅ Custom RoundedButton Widget
class RoundedButton extends StatelessWidget {
  // Properties
  final String btnName;
  final Icon? icon;
  final Color bgColor;
  final TextStyle textStyle;
  final VoidCallback? callback;

  // ✅ Constructor with required properties
  const RoundedButton({
    super.key,
    required this.btnName,
    this.icon,
    required this.bgColor,
    required this.textStyle,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback, // ✅ ye tumhara function hai jo button click pe chalega
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // ✅ rounded shape
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) icon!, // ✅ Agar icon diya hai to lagao
          if (icon != null) const SizedBox(width: 8), // ✅ Icon aur text ke beech gap
          Text(
            btnName,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
