import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar_widget.dart';
import 'package:notes_app/widgets/custom_button_widget.dart';
import 'package:notes_app/widgets/custom_text_field_widget.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});
  static String id = 'EditView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBarWidget(
              text: 'Edit Note',
            ),
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
