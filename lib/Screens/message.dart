import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/chatModel.dart';

class msg extends StatelessWidget {
  const msg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: const Text(
            'Ramneek_kaurr',
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.video_call_outlined,
                  color: Colors.black,
                  size: 30,
                )),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.add,
                size: 30,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 15),
                child: SizedBox(
                  height: 32,
                  width: 350,
                  child: TextField(
                    //Set text style
                    style: const TextStyle(fontSize: 18),

                    decoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 216, 212, 212),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ), //Create rounded outlined border
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        labelText:
                            "Search", //Set the label text that will be shown over the border
                        prefixIcon: const Icon(Icons
                            .search), // Set email icon at the start of the TextField
                        hintText:
                            "Search"), // Set the hint text that will be shown when TextField is empty
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 15),
                child: Column(
                  children: [
                    const CircleAvatar(
                        radius: 37,
                        foregroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1609010697446-11f2155278f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                        )),
                    const Gap(20),
                    Text(
                      "Leave a note",
                      style:
                          GoogleFonts.poppins(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Messages",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Requests",
                      style: GoogleFonts.poppins(
                        color: const Color.fromARGB(255, 8, 138, 245),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: chatList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                              foregroundImage:
                                  NetworkImage(chatList[index].image)),
                          title: Text(chatList[index].userName),
                          subtitle: Row(
                            children: [
                              Text(chatList[index].message),
                              const Text("    "),
                              Text(chatList[index].statusTime),
                            ],
                          ),
                          trailing: const Icon(Icons.photo_camera_outlined),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
