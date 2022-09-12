import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/constends/box.dart';
import 'package:grocery_app/home_screen/controllers/top_users_controller.dart';

class TopUsers extends StatelessWidget {
  TopUsers({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;
  final topUsersController =Get.put(TopUsersController());

  @override
  Widget build(BuildContext context) {
    final data = topUsersController.userList[index];
    return Row(
      children: [
        stdWidthBox,
        SizedBox(
          width: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(data.usersImage),
              ),
              Text(
                "@_user${index + 1}",
                style: TextStyle(color: Colors.grey[600]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
