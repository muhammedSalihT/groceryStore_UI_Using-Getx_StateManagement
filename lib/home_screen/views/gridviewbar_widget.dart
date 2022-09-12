import 'package:flutter/material.dart';
import 'package:grocery_app/constends/box.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/uis.dart';

class GridViewBarWidget extends StatelessWidget {
  const GridViewBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: const Color(0XFFf2f3f2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              stdWidthBox,
              Iconify(
                Uis.grid,
                color: Colors.grey[700],
              ),
              stdWidthBox,
              Text(
                "GRID VIEW",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.grey[600]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Iconify(Ph.stack_simple_fill, color: Colors.grey[700]),
              stdWidthBox,
              Icon(
                Icons.sort,
                color: Colors.grey[700],
              ),
              stdWidthBox,
            ],
          ),
        ],
      ),
    );
  }
}
