import 'package:flutter/material.dart';

class HorizontalViewWidget extends StatelessWidget {
  const HorizontalViewWidget({
    Key? key,
    required this.horizontalViewWidget,
  }) : super(key: key);

  final IndexedWidgetBuilder horizontalViewWidget;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 150,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: horizontalViewWidget),
    );
  }
}