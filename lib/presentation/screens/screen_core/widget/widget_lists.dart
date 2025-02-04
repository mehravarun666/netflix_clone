
import 'package:flutter/material.dart';
import 'package:netflix/controller/screen_actions_controller/screen_navigation_controller/screen_navigation/search_screen_navigation.dart';
import 'package:netflix/presentation/screens/home_screen/home_screen.dart';
import 'package:netflix/presentation/screens/my_netflix_screen/my_netflix_scrn.dart';
import 'package:netflix/presentation/screens/new_and_hot_screen/new_and_hot_scrn.dart';


class WidgetList {
  BuildContext context;

  WidgetList(this.context);

  final List<Widget> mainScreens = [
    const HomeScreen(),
    const NewAndHotScrn(),
    const MyNetflixScrn()
  ];

  final List<Widget> appbarTitle = [
    Image.asset(
      'assets/img/netflix_logo0.png',
      height: 35,
      width: 35,
    ),
    const Text(
      'New & Hot',
      style: TextStyle(fontWeight: FontWeight.w700),
    ),
    const Text(
      'My Netflix',
      style: TextStyle(fontWeight: FontWeight.w700),
    ),
  ];

  void navigateToSearchScreen() {
    ScreenNavigationCntrl().navigateToSearchScreen(context);
  }

  List<List<Widget>> get appbarActions => [
        [
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.cast),
          ),
          GestureDetector(
            onTap: () {
              navigateToSearchScreen();
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.search),
            ),
          ),
        ],
        [
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.cast),
          ),
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.search),
            ),
            onTap: () => navigateToSearchScreen(),
          ),
        ],
        [
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.cast),
          ),
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.search),
            ),
            onTap: () => navigateToSearchScreen(),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.density_medium),
          ),
        ],
      ];
}
