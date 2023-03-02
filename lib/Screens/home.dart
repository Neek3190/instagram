import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Instagram",
            style: GoogleFonts.fruktur(color: Colors.black, fontSize: 22),
          ),
          actions: const [
            Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
            Gap(10),
            Icon(
              Icons.maps_ugc_outlined,
              color: Colors.black,
            ),
            Gap(10)
          ]),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CircleAvatar(
                  radius: 30,
                  foregroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
                ),
                CircleAvatar(
                  radius: 30,
                  foregroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
                ),
                CircleAvatar(
                  radius: 30,
                  foregroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
                ),
                CircleAvatar(
                  radius: 30,
                  foregroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
                ),
                CircleAvatar(
                  radius: 30,
                  foregroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
                ),
                // CircleAvatar(
                //   radius: 30,
                //   foregroundImage: NetworkImage(
                //       'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
                // ),
                // CircleAvatar(
                //   radius: 30,
                //   foregroundImage: NetworkImage(
                //       'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
                // ),
                // CircleAvatar(
                //   radius: 30,
                //   foregroundImage: NetworkImage(
                //       'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
