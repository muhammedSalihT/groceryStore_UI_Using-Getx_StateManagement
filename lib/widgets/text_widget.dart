import 'package:flutter/material.dart';

class StdTextWidget extends StatelessWidget {
  const StdTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(height: 1.4, fontWeight: FontWeight.bold),
    );
  }
}
