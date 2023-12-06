import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field_widget.dart';

class CustomAddBottom extends StatelessWidget {
  const CustomAddBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Spacer(
            flex: 1,
          ),
          CustomTextFieldWidget(),
          SizedBox(
            height: 20,
          ),
          CustomTextFieldWidget(),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
