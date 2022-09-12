import 'package:get/get.dart';
import 'package:grocery_app/chats_screen/view/chats_screen.dart';
import 'package:grocery_app/explore_screen/view/explore_screen.dart';
import 'package:grocery_app/favorites_screen/view/favorites_screen.dart';
import 'package:grocery_app/home_screen/views/home_screen.dart';
import 'package:grocery_app/search_screen/view/search_screen.dart';

class BottomNavController extends GetxController {
  var currentNavIndex = 0.obs;

  var pages = [
    const HomeScreen(),
    const SearchScreen(),
    const ExploreScreen(),
    const FavouriteScreen(),
    const ChatsScreen()
  ].obs;
}
