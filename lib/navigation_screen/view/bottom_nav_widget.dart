import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/constends/colors.dart';
import 'package:grocery_app/navigation_screen/controller/navigation_controller.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/el.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/ri.dart';

class BottomNavigationWidget extends StatelessWidget {
  BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  final navController = Get.find<BottomNavController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return BottomNavigationBar(
          onTap: navController.currentNavIndex,
          currentIndex: navController.currentNavIndex.value,
          selectedItemColor: blackColor,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: [
            const BottomNavigationBarItem(
                icon: Iconify(
                  Ri.home_smile_fill,
                  size: 35,
                ),
                label: "Home"),
            const BottomNavigationBarItem(
                icon: Iconify(Ic.baseline_explore, size: 35), label: "Search"),
            BottomNavigationBarItem(
                icon: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: blackColor,
                      ),
                    ),
                    const SizedBox(
                      child: CircleAvatar(
                        backgroundColor: whiteColor,
                        radius: 21,
                        child: CircleAvatar(
                          radius: 19,
                          backgroundImage: AssetImage(
                              "assets/White-grocery-store-logo-vector.webp"),
                        ),
                      ),
                    )
                  ],
                ),
                label: "Explore"),
            const BottomNavigationBarItem(
                icon: Iconify(Bi.chat_heart_fill, size: 35),
                label: "favourites"),
            const BottomNavigationBarItem(
                icon: Iconify(El.phone_alt, size: 35), label: "chats"),
          ],
        );
      },
    );
  }
}
