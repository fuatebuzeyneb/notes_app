import 'package:flutter/material.dart';
import 'package:notes_app/consts.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: FocusNode(),
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        labelText: 'Title',
        labelStyle: const TextStyle(color: kPrimaryColor),
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
