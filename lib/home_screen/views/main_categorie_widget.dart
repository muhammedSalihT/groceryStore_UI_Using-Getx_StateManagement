import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';

import '../../constends/colors.dart';
import '../../widgets/text_widget.dart';

class MainCategoryWidget extends StatelessWidget {
  const MainCategoryWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CircleAvatar(
            radius: 35,
            backgroundColor: Color(0XFF222a30),
            child: Iconify(
              Ph.stack_fill,
              color: whiteColor,
              size: 30,
            ),
          ),
          const StdTextWidget(text: "Main"),
          StdTextWidget(text: "Category${index + 1}")
        ],
      ),
    );
  }
}