import 'package:flutter/material.dart';
import 'package:notes_app/consts.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.lable,
    this.maxLine = 1,
    this.onSaved,
    this.onChanged,
  });
  final String lable;
  final int maxLine;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required';
        } else {
          return null;
        }
      },
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
