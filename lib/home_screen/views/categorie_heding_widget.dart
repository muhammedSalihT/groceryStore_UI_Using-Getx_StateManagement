import 'package:flutter/material.dart';

class CategorieHedingWidget extends StatelessWidget {
  const CategorieHedingWidget({
    Key? key,
    required this.categorieName,
  }) : super(key: key);

  final String categorieName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.grey.withOpacity(.1),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '#$categorieName',
              style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
            ),
            const Text(
              "View All",
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
