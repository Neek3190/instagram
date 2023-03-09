import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class feeds extends StatelessWidget {
  feeds(this.img1, this.username, this.img2, this.username1, {super.key});
  String img1;
  String username;
  String img2;
  String username1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 430,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(img1),
                    ),
                    // Text(username),
                    const Gap(10),
                    Text(
                      username,
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                // CircleAvatar(
                //   backgroundImage: NetworkImage(img1),
                // ),
                // // Text(username),
                // const Gap(10),
                // Text(
                //   username,
                //   style: GoogleFonts.poppins(
                //       fontSize: 16, fontWeight: FontWeight.w700),
                // ),

                const Icon(Icons.more_vert),
              ],
            ),
          ),
          Container(
            height: 250,
            decoration: const BoxDecoration(
              //     border: Border.all(
              //   color: Colors.green,
              //   width: 8,
              // )
              // borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(
                    5.0,
                    5.0,
                  ), //Offset
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                // BoxShadow(
                //   color: Colors.white,
                //   offset: Offset(0.0, 0.0),
                //   blurRadius: 0.0,
                //   spreadRadius: 0.0,
                // ), //BoxShadow
              ],
            ),
            child: Image.network(
              img2,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            height: 40,
            padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // mainAxisAlignment:
                  // MainAxisAlignment.spac,
                  children: [
                    const Icon(
                      Icons.favorite_outline,

                      //  color: Colors.black
                    ),
                    const Gap(18),
                    const Image(
                      image: AssetImage('assets/icons/comment.png'),
                      height: 20,
                    ),
                    const Gap(18),
                    InkWell(
                      onTap: () {
                        Share.share('Hi, check this cool app!!!');
                      },
                      child: const Image(
                        image: AssetImage('assets/icons/send.png'),
                        height: 20,
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                const Icon(Icons.bookmark_outline),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                const Text('Liked by '),
                Text(
                  username1,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(' and '),
                const Text(
                  'others',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8),
            child: RichText(
                text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                  TextSpan(
                      text: username,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          " If we shake out all of the crumbs from all of the keyboards in the world, we can end world hunger.",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w400))
                ])),
          )
        ],
      ),
    );
  }
}
