import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sta/stry/stryViewPge.dart';

import '../widgets/feeds.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  //gap between the dots
  late Animation<double> gap;

// the point of animation
  late Animation<double> base;

  // it  reverse the animation
  late Animation<double> reverse;

  // constructor whenever you create a new animation controller.
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 10));

    base = CurvedAnimation(parent: controller, curve: Curves.easeOut);
// A linear interpolation between a beginning and ending value.
    //to revert the animation of the image when borders are animating
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);
    gap = Tween<double>(begin: 15.0, end: 0.0)
        .animate(base) //the gap between the dots
      ..addListener(() {
        //.. This syntax means that the addListener() method is called
        // with the return value from animate().
        setState(() {});
      });

    controller.forward();
    // void tapfunction() {
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: ((context) => const StoryPageview())));
  }

  List img = [
    "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80",
    "https://images.unsplash.com/photo-1609010697446-11f2155278f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
    "https://images.unsplash.com/photo-1556157382-97eda2d62296?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=761&q=80",
    "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
    "https://images.unsplash.com/photo-1536321115970-5dfa13356211?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1543132220-3ec99c6094dc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
  ];
  List username = [
    "Ramneek",
    "Arshdeep",
    "Jaskiran",
    "Navjeet",
    "Komalpreet",
    "Jasbeer",
    "Rohitdeep",
    "Pinki",
    "Karam",
    "Navsirat",
    "Japneet"
  ];
  List post = [
    'https://tse4.mm.bing.net/th?id=OIP.xQ22p4-a5USKTUEmnVhB9QHaEK&pid=Api&P=0',
    'https://images.unsplash.com/photo-1674413146432-3e01d9868828?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
    'https://images.unsplash.com/photo-1674421338672-3591ba6f176e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1015&q=80',
    'https://tse4.mm.bing.net/th?id=OIP.xQ22p4-a5USKTUEmnVhB9QHaEK&pid=Api&P=0',
    'https://images.unsplash.com/photo-1674413146432-3e01d9868828?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
    'https://images.unsplash.com/photo-1674421338672-3591ba6f176e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1015&q=80',
    'https://tse4.mm.bing.net/th?id=OIP.xQ22p4-a5USKTUEmnVhB9QHaEK&pid=Api&P=0',
    'https://images.unsplash.com/photo-1674421338672-3591ba6f176e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1015&q=80',
    'https://images.unsplash.com/photo-1674413146432-3e01d9868828?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
    'https://images.unsplash.com/photo-1674421338672-3591ba6f176e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1015&q=80',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Instagram",
            style: GoogleFonts.fruktur(color: Colors.black, fontSize: 22),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.black,
              ),
            ),
            Gap(10),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.maps_ugc_outlined,
                color: Colors.black,
              ),
            ),
            Gap(10),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: img.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) {
                        return StoryViewPage(img, index);
                      })),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              child: RotationTransition(
                                //it animates the rotation of widget
                                turns: base,
                                child: DashedCircle(
                                  gapSize: gap.value,
                                  dashes: 20,
                                  color: Theme.of(context).primaryColor,
                                  child: RotationTransition(
                                    turns: reverse,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: CircleAvatar(
                                        radius: 25.0,
                                        backgroundImage:
                                            NetworkImage(img[index]),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Gap(5),
                            Text(username[index])
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: img.length,
                  itemBuilder: ((context, index) {
                    return feeds(img[index], username[index], post[index],
                        username[index + 1]);
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
