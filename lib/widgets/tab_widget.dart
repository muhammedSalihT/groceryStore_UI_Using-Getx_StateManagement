import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    Key? key,
    required this.tabName,
  }) : super(key: key);

  final String tabName;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Column(
        children: [
          Text(tabName),
        ],
      ),
    );
  }
}