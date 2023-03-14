import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class reels extends StatefulWidget {
  reels(this.img1, this.like, this.comment, this.img2, this.username,
      this.caption, this.audio, this.img3,
      {super.key});
  String img1;
  String like;
  String comment;
  String img2;
  String username;
  String caption;
  String audio;
  String img3;

  @override
  State<reels> createState() => _reelsState();
}

class _reelsState extends State<reels> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: double.infinity,
      // width: double.infinity,
      // height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // child: Image.network(
      //   "https://images.unsplash.com/photo-1618338279109-d470da3999ed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      //   fit: BoxFit.cover,
      // ),
      // https://images.unsplash.com/photo-1618886487795-ea7aaa687631?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aW5zdGFncmFtJTIwZmVlZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(widget.img1),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.space,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Reels",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        color: Colors.white,
                      )),
                  const Icon(
                    Icons.camera_alt_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const Gap(450),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    const Icon(
                      Icons.favorite_border_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                    // "31.2k"
                    Text(widget.like,
                        style: GoogleFonts.montserrat(
                          // fontWeight: FontWeight.w,
                          fontSize: 12,
                          color: Colors.white,
                        )),
                  ],
                ),
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    const Icon(
                      Icons.comment_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(widget.comment,
                        style: GoogleFonts.montserrat(
                          // fontWeight: FontWeight.w,
                          fontSize: 12,
                          color: Colors.white,
                        )),
                  ],
                ),
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.img2),
                      radius: 16,
                    ),
                    Gap(10),
                    Text(widget.username,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white,
                        )),
                    // Gap(12),
                    Gap(10),

                    Container(
                      height: 17,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          // boxShadow: [BoxShadow(color: Colors.white)]
                          border: Border.all(color: Colors.white)),
                      child: Center(
                          child: Text("Follow",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.white))),
                    ),
                  ],
                ),
                // Gap(8),

                InkWell(
                  onTap: () {
                    Share.share('check out my ');
                  },
                  child: const Icon(
                    Icons.send_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.caption,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.white,
                    )),
                const Icon(
                  Icons.more_horiz,
                  size: 30,
                  color: Colors.white,
                ),
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.audio,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.white,
                    )),
                Container(
                  height: 35,
                  width: 35,
                  // color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    image: DecorationImage(
                      image: NetworkImage(widget.img3),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
