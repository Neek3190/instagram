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
    const search(),
    const post(),
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
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black,
        currentIndex: currentPage,
        onTap: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 35,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 35,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                size: 35,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.movie_creation_outlined,
                size: 35,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 35,
              ),
              label: ''),
        ],
      ),
    );
  }
}
