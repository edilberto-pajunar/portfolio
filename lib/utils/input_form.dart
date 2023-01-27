import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final String text;
  final int? maxLines;
  final double? width;
  final TextEditingController controller;
  const InputForm(
      {super.key,
      required this.text,
      required this.controller,
      this.maxLines,
      this.width = 400});

  @override
  Widget build(BuildContext context) {
    final InputBorder border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
      ),
      borderRadius: BorderRadius.circular(
        6,
      ),
    );

    return Container(
      width: width,
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: text,
          enabledBorder: border,
          focusedBorder: border,
        ),
        controller: controller,
      ),
    );
  }
}
