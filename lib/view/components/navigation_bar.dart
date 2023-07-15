import 'package:flutter/material.dart';
import 'package:internship_take_home_app/view/constants/enums.dart';
import 'package:internship_take_home_app/view/constants/styles.dart';
import 'package:internship_take_home_app/view/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({this.isNavBarVisible});
  static int currentIndex = 0;
  bool? isNavBarVisible;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    print(widget.isNavBarVisible!);
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      height: widget.isNavBarVisible! ? kToolbarHeight : 0,
      child: widget.isNavBarVisible!
          ? Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 4.0,
                  ),
                ],
              ),
              child: Scaffold(
                  bottomNavigationBar: BottomNavigationBar(
                selectedLabelStyle: kTextStyle.copyWith(
                  fontWeight: FontWeight.w500,
                ),
                showUnselectedLabels: true,
                selectedItemColor: const Color(0xFF0E0E0E),
                unselectedItemColor: const Color(0xFFCFCFCF),
                currentIndex: BottomNavBar.currentIndex,
                items: [
                  BottomNavigationBarItem(
                      activeIcon: const ImageIcon(
                        AssetImage('images/Group 34521.png'),
                        color: Color(0xFFCEF47B),
                        size: 24,
                      ),
                      icon: const ImageIcon(
                        AssetImage('images/Group 34521.png'),
                        color: Color(0xFFCFCFCF),
                        size: 24,
                      ),
                      label: NavBarLabel.Home.name),
                  BottomNavigationBarItem(
                      activeIcon: const ImageIcon(
                        AssetImage('images/Group 34525.png'),
                        color: Color(0xFFCEF47B),
                        size: 24,
                      ),
                      icon: const ImageIcon(
                        AssetImage('images/Group 34525.png'),
                        color: Color(0xFFCFCFCF),
                        size: 24,
                      ),
                      label: NavBarLabel.Matches.name),
                  BottomNavigationBarItem(
                      activeIcon: const ImageIcon(
                        AssetImage('images/Group 34526.png'),
                        color: Color(0xFFCEF47B),
                        size: 24,
                      ),
                      icon: const ImageIcon(
                        AssetImage('images/Group 34526.png'),
                        color: Color(0xFFCFCFCF),
                        size: 24,
                      ),
                      label: NavBarLabel.Clubs.name),
                  BottomNavigationBarItem(
                      activeIcon: const ImageIcon(
                        AssetImage('images/Group 34527.png'),
                        color: Color(0xFFCEF47B),
                        size: 24,
                      ),
                      icon: const ImageIcon(
                        AssetImage('images/Group 34527.png'),
                        color: Color(0xFFCFCFCF),
                        size: 24,
                      ),
                      label: NavBarLabel.Buddies.name),
                  BottomNavigationBarItem(
                      activeIcon: const ImageIcon(
                        AssetImage('images/Group 34528.png'),
                        color: Color(0xFFCEF47B),
                        size: 24,
                      ),
                      icon: const ImageIcon(
                        AssetImage('images/Group 34528.png'),
                        color: Color(0xFFCFCFCF),
                        size: 24,
                      ),
                      label: NavBarLabel.Profile.name),
                ],
                onTap: (index) {
                  setState(() {
                    HomeScreen.pageController.jumpToPage(index);
                  });
                },
              )),
            )
          : null,
    );
  }
}
