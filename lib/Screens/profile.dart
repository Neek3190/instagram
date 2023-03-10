import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sta/widgets/info_widget.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.lock_outline,
          color: Colors.black,
        ),
        title: const Text(
          'ABC',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 25,
              width: 20,
              child: Image.asset('assets/images/add.png'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.density_medium,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        foregroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
                      ),
                      Text(
                        'abc_profile',
                        style:
                            GoogleFonts.montserrat(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '0',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text('Posts')
                    ],
                  ),
                  Column(
                    children: const [Text('0'), Text('Followers')],
                  ),
                  Column(
                    children: const [Text('0'), Text('Following')],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 35,
                    // padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 237, 234, 234),
                    ),
                    width: 150,
                    child: Center(
                        child: Text(
                      'Edit Profile',
                      style:
                          GoogleFonts.montserrat(fontWeight: FontWeight.w600),
                    )),
                    // color: Colors.grey,
                  ),
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 237, 234, 234)),
                    width: 150,
                    child: Center(
                        child: Text(
                      'Share Profile',
                      style:
                          GoogleFonts.montserrat(fontWeight: FontWeight.w600),
                    )),
                    // color: Colors.grey,
                  ),
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 237, 234, 234)),
                    width: 40,

                    child: const Icon(
                        Icons.person_add_outlined), // color: Colors.grey,
                  )
                ],
              ),
              const Text('Story Highlights'),
              const Text('Keep your favourite stories on your profile'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 237, 234, 234),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 237, 234, 234),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 237, 234, 234),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 237, 234, 234),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              DefaultTabController(
                  length: 2, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: const TabBar(
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.black26,
                            indicatorColor: Colors.black,
                            indicatorWeight: 1.0,
                            tabs: [
                              Tab(
                                icon: Icon(
                                  Icons.apps,
                                  // color: Colors.black,
                                ),
                              ),
                              Tab(
                                  icon: Icon(
                                Icons.assignment_ind_outlined,
                                // color: Colors.black,
                              )),
                            ],
                          ),
                        ),
                        Container(
                            height: 400, //height of TabBarView
                            decoration: const BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.grey, width: 0.5))),
                            child: TabBarView(children: <Widget>[
                              Container(
                                child: Column(
                                  children: [
                                    const Text('Profile',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold)),
                                    const Text(
                                      'When you share photos and videos, they\'ll\n                  appear on your profile.',
                                      style: TextStyle(color: Colors.black38),
                                    ),
                                    const Text(
                                      'Share your first photo or video',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    const Text(
                                      textAlign: TextAlign.left,
                                      'Complete your profile',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17),
                                    ),
                                    const Text(
                                      '0 OF 4 COMPLETE',
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 12),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          InfoWidget(
                                              'Add bio',
                                              'Tell your followers a little bit\n           about yourself',
                                              'Add Bio'),
                                          const Gap(10),
                                          InfoWidget(
                                              'Add your name',
                                              'Add your full name so that your \n       friends know it\'s you.',
                                              'Edit Name'),
                                          const Gap(10),
                                          InfoWidget(
                                              'Add profile photo',
                                              '       Choose a profile photo to \nrepresent yourself on Instagram',
                                              'Change Photo'),
                                          const Gap(10),
                                          InfoWidget(
                                              'Find people to follow',
                                              'Follow people and interests you \n                  care about',
                                              'Find More')
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 90,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 3, color: Colors.black87),
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.assignment_ind_outlined,
                                        color: Colors.black87,
                                        size: 60,
                                      ),
                                    ),
                                    const Gap(20),
                                    const Text('Photos and Videos of you',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold)),
                                    const Gap(10),
                                    const Text(
                                      'When people tag you in photos and videos.\n                      they\'ll appear here',
                                      style: TextStyle(color: Colors.black38),
                                    ),
                                  ],
                                ),
                              ),
                            ]))
                      ])),
            ],
          ),
        ),
      ),
    );
  }
}
