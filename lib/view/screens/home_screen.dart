import 'package:flutter/material.dart';
import 'package:internship_take_home_app/view/components/home_screen_content.dart';
import 'package:internship_take_home_app/view/components/navigation_bar.dart';
import 'package:internship_take_home_app/view/screens/buddies_screen.dart';
import 'package:internship_take_home_app/view/screens/club_screen.dart';
import 'package:internship_take_home_app/view/screens/match_feed_screen.dart';
import 'package:internship_take_home_app/view/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  static PageController pageController = PageController();
  static bool isNavBarVisible = true;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Function() onTap() {
    return () {
      setState(() {
        HomeScreen.isNavBarVisible = !(HomeScreen.isNavBarVisible);
        print(HomeScreen.isNavBarVisible);
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomeScreenContent(onTap: onTap()),
      MatchFeedScreen(),
      ClubFeedScreen(),
      BuddiesScreen(),
      ProfileScreen()
    ];
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: HomeScreen.pageController,
            onPageChanged: (index) {
              setState(() {
                BottomNavBar.currentIndex = index;
                print(HomeScreen.isNavBarVisible);
              });
            },
            children: screens,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavBar(isNavBarVisible: HomeScreen.isNavBarVisible),
          )
        ],
      ),
    );
  }
}
