import 'package:reportify/screens/home_screen.dart';
import 'package:reportify/screens/bookmarks.dart';
import 'package:reportify/screens/trending.dart';
import 'package:reportify/screens/profile.dart';
import 'package:reportify/utils/constants.dart';
import 'package:flutter/material.dart';

class MainScreenHost extends StatefulWidget {
  const MainScreenHost({super.key});

  @override
  State<MainScreenHost> createState() => _MainScreenHostState();
}

class _MainScreenHostState extends State<MainScreenHost> {
  var currentIndex = 0;

  Widget buildTabContent(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const Bookmarks();
      case 2:
        return const Trending();
      case 3:
        return const Profile();
      default:
        return const HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      body: buildTabContent(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: secondaryDark,
        unselectedItemColor: fontLight,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/home.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/bookmark.png"),
              label: "Bookmark"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/trending.png"),
              label: "Trending"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/user.png"), label: "Profile"),
        ],
      ),
    );
    return newMethod(scaffold);
  }

  Scaffold newMethod(Scaffold scaffold) => scaffold;
}
