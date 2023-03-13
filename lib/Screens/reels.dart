import 'package:flutter/material.dart';
import 'package:sta/widgets/reelWidget.dart';

class reel extends StatelessWidget {
  const reel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            reels(
                "https://images.unsplash.com/photo-1618886487795-ea7aaa687631?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aW5zdGFncmFtJTIwZmVlZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                "31.2k",
                "3060",
                "https://images.unsplash.com/photo-1497316730643-415fac54a2af?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                "anubhavkalia03",
                "Sunset with best @paras_dhir",
                "bahara X Sharan",
                "https://images.unsplash.com/photo-1619983081563-430f63602796?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bXVzaWN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
            reels(
                "https://images.unsplash.com/photo-1582972236019-ea4af5ffe587?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z29hfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                "31.2k",
                "3060",
                "https://images.unsplash.com/photo-1455274111113-575d080ce8cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80",
                "paras_dhir03",
                "Goa diaries @anubhavkalia03",
                "sahara X bohemia",
                "https://images.unsplash.com/photo-1458560871784-56d23406c091?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bXVzaWN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
          ],
        ),
      ),
    );
  }
}
