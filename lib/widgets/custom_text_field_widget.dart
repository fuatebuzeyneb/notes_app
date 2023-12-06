import 'package:flutter/material.dart';
import 'package:notes_app/consts.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.lable,
    this.maxLine = 1,
  });
  final String lable;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        labelText: lable,
        labelStyle: const TextStyle(color: kPrimaryColor, fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: kPrimaryColor),
        ),
      ),
    );
  }
}
