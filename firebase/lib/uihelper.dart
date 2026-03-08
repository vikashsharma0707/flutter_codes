import 'package:flutter/material.dart';

class UIHelper {
  static Widget customTextField(
      TextEditingController controller,
      String label,
      IconData iconData,
      bool toHide,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
        obscureText: toHide,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(iconData),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  static Widget customButton(VoidCallback onPressed, String text) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}