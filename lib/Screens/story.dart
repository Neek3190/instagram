import 'package:flutter/material.dart';
import 'package:sta/Screens/stryView.dart';

class stry extends StatelessWidget {
  const stry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 80,
          padding: const EdgeInsets.all(8.0),
          // color: Colors.blue,
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                ),
                title: const Text(
                  "Logan Veawer",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                subtitle: Text(
                  "Today, 20:16 PM",
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StoryPageview())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
