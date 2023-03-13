import 'package:flutter/material.dart';
import 'package:sta/Screens/home.dart';
import 'package:sta/Screens/post.dart';
import 'package:sta/Screens/profile.dart';
import 'package:sta/Screens/reels.dart';
import 'package:sta/Screens/search.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  final pages = [
    const Home(),
    search(),
    const TestScreen(),
    const reels(),
    const profile()
  ];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages.elementAt(currentPage),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        currentIndex: currentPage,
        onTap: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              // ImageIcon(
              //    AssetImage("images/icon_more.png"),
              //         color: Color(0xFF3A5A98),
              //    ),
              icon: Icon(
                Icons.home_outlined,
              ),
              activeIcon: Icon(Icons.home_filled),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
              ),
              activeIcon: Icon(Icons.search),
              label: ''),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/icons/post.png'),
                height: 25,
              ),
              activeIcon: Icon(Icons.add_circle),
              label: ''),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/icons/reels.png'),
                height: 25,
              ),
              activeIcon: Icon(Icons.movie_creation),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
              ),
              activeIcon: Icon(Icons.account_circle),
              label: ''),
        ],
        elevation: 10,
      ),
    );
  }
}
