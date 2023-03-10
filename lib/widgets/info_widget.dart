import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InfoWidget extends StatelessWidget {
  InfoWidget(this.title, this.subTitle, this.action, {super.key});
  // String logo;
  String title;
  String subTitle;
  String action;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 230,
      width: 220,
      decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: const Color.fromARGB(255, 215, 213, 213)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(20),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.yellow),
              // child: Icon(logo),
            ),
            const Gap(20),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
            // const Gap(30),
            Text(
              subTitle,
              style: const TextStyle(color: Colors.black38),
            ),
            const Gap(20),
            Container(
              height: 25,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.blue),
              child: Text(
                action,
                style: const TextStyle(color: Colors.white),
              ),
            )
          ]),
    );
  }
}
