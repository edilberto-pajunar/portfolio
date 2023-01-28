import 'package:flutter/material.dart';
import 'package:portfolio/constant/color.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const Button({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: tPrimaryColor,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
