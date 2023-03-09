import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class feeds extends StatelessWidget {
  feeds(this.img1, this.username, this.img2, {super.key});
  String img1;
  String username;
  String img2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 400,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 100,
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
          SizedBox(
            height: 250,
            child: Image.network(img2),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                const Gap(20),
                const Icon(Icons.bookmark_outline),
              ],
            ),
          )
        ],
      ),
    );
  }
}
