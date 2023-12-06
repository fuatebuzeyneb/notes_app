import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button_widget.dart';
import 'package:notes_app/widgets/custom_text_field_widget.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomTextFieldWidget(
              lable: 'Title',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFieldWidget(
              lable: 'Contant',
              maxLine: 5,
            ),
            SizedBox(
              height: 50,
            ),
            CustomButtonWidget(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
