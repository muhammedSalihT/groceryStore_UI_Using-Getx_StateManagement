import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/navigation_screen/controller/navigation_controller.dart';
import 'package:grocery_app/navigation_screen/view/bottom_nav_widget.dart';

class NavigationScreen extends StatelessWidget {
  NavigationScreen({Key? key}) : super(key: key);

  final controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () {
            return controller.pages[controller.currentNavIndex.value];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
