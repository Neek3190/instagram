import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class feed extends StatefulWidget {
  feed(this.img1, this.username, this.img3, {super.key});
  String img1;
  String username;
  String img3;

  @override
  State<feed> createState() => _feedState();
}

class _feedState extends State<feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          CircleAvatar(
                            // backgroundImage: NetworkImage(),

                            radius: 25,
                          ),
                          Gap(10),
                          Text("rf"),
                          //   style: GoogleFonts.poppins(
                          //       fontSize: 16, fontWeight: FontWeight.w700),
                          // ),
                        ],
                      ),
                      const Icon(Icons.more_vert),
                      // Container(
                      //     alignment: Alignment.center,
                      //     // decoration: BoxDecoration(boxShadow: [
                      //     //   BoxShadow(
                      //     //       blurRadius: 5, color: Colors.lightBlue)
                      //     // ]),
                      //     width: 80,
                      //     height: 25,
                      //     decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(18),
                      //         color: Colors.white,
                      //         boxShadow: const [
                      //           BoxShadow(
                      //               blurRadius: 1, color: Colors.lightBlue)
                      //         ]),
                      //     child: const Text(
                      //       'Follow',
                      //       style: TextStyle(
                      //           color: Colors.blue,
                      //           fontWeight: FontWeight.w600),
                      //     ))
                    ],
                  ),

                  // color: Colors.pink,
                )),
            Expanded(
                flex: 7,
                child: Container(
                  child: Image.network(
                    'https://tse4.mm.bing.net/th?id=OIP.xQ22p4-a5USKTUEmnVhB9QHaEK&pid=Api&P=0',
                    fit: BoxFit.fill,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          // mainAxisAlignment:
                          // MainAxisAlignment.spac,
                          children: const [
                            Icon(
                              Icons.favorite_outline,

                              //  color: Colors.black
                            ),
                            Gap(18),
                            Icon(Icons.mode_comment_outlined),
                            Gap(18),
                            Icon(Icons.send_outlined),
                          ],
                        ),
                      ),
                      // Expanded(flex: 2, child: Gap(1)),
                      const Gap(20),
                      const Expanded(
                          flex: 0, child: Icon(Icons.bookmark_outline)),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
