import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/consts.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/views/widgets/custom_color_item_widget.dart';

class CustomColorListViewWidget extends StatefulWidget {
  const CustomColorListViewWidget({
    super.key,
  });

  @override
  State<CustomColorListViewWidget> createState() =>
      _CustomColorListViewWidgetState();
}

class _CustomColorListViewWidgetState extends State<CustomColorListViewWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: kColors.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(right: 6),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
              setState(() {});
            },
            child: CustomColorItemWidget(
              color: kColors[index],
              isActive: currentIndex == index,
            ),
          ),
        );
      },
    );
  }
}
