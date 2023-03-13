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
        // leading: const Icon(
        //   Icons.lock_outline,
        //   color: Colors.black,
        //   size: 18,
        // ),
        title: Row(
          children: const [
            Icon(
              Icons.lock_outline,
              color: Colors.black,
              size: 17,
            ),
            Gap(5),
            Text(
              'arshdeep.kkaur',
              style: TextStyle(color: Colors.black),
            ),
            Gap(10),
            Icon(
              Icons.expand_more,
              color: Colors.black,
            )
          ],
        ),
        actions: [
          InkWell(
            // onTap: () {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => const bottomSheet()));
            // },
            onTap: () {
              _settingModalBottomSheet(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 25,
                width: 20,
                child: Image.asset('assets/images/add.png'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              _modalBottomSheet(context);
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.density_medium,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          // padding: const EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Gap(5),
                      const CircleAvatar(
                        radius: 35,
                        foregroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
                      ),
                      Text(
                        'arsh_kaur',
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
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              const Gap(20),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 4),
                child: Text(
                  'Story Highlights',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text('Keep your favourite stories on your profile'),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black87),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                      // const Text('New'),
                    ],
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
              const Gap(25),
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
                                  Icons.apps, size: 30,
                                  // color: Colors.black,
                                ),
                              ),
                              Tab(
                                  icon: Icon(
                                Icons.assignment_ind_outlined, size: 30,
                                // color: Colors.black,
                              )),
                            ],
                          ),
                        ),
                        // const Gap(10),
                        Container(
                            height: 600,
                            //height of TabBarView
                            decoration: const BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.grey, width: 0.5))),
                            child: TabBarView(children: <Widget>[
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Gap(40),
                                    const Text('Profile',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold)),
                                    const Gap(15),
                                    const Text(
                                      'When you share photos and videos, they\'ll\n                  appear on your profile.',
                                      style: TextStyle(color: Colors.black38),
                                    ),
                                    const Gap(15),
                                    const Text(
                                      'Share your first photo or video',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    const Gap(60),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: const Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 10, 0, 3),
                                            child: Text(
                                              'Complete your profile',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 17),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(10, 0, 0, 20),
                                          child: Text(
                                            '0 OF 4 COMPLETE',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Gap(10),
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
                                              '   Choose a profile photo to\nrepresent urself on Instagram',
                                              'Change Photo'),
                                          const Gap(10),
                                          InfoWidget(
                                              'Find people to follow',
                                              'Follow people and interests you \n                  care about',
                                              'Find More'),
                                          const Gap(10)
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

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SizedBox(
          child: Wrap(
            children: <Widget>[
              // const Gap(5),
              Container(
                height: 40,
                alignment: Alignment.center,
                child: const Text(
                  'Create',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              // const Divider(),
              ListTile(
                  leading: const Icon(
                    Icons.movie_outlined,
                    color: Colors.black,
                  ),
                  title: const Text('Reel'),
                  onTap: () => {}),
              // const Divider(),
              ListTile(
                leading: const Icon(
                  Icons.grid_view_outlined,
                  color: Colors.black,
                ),
                title: const Text('Post'),
                onTap: () => {},
              ),
              // const Divider(),
              ListTile(
                  leading: const Icon(
                    Icons.add_circle_outline,
                    color: Colors.black,
                  ),
                  title: const Text('Story'),
                  onTap: () => {}),
              // const Divider(),
              ListTile(
                  leading: const Icon(
                    Icons.stars_outlined,
                    color: Colors.black,
                  ),
                  title: const Text('Story Highlight'),
                  onTap: () => {}),
              // const Divider(),
              ListTile(
                  leading: const Icon(
                    Icons.sensors,
                    color: Colors.black,
                  ),
                  title: const Text('Live'),
                  onTap: () => {}),
              // const Divider(),
              ListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                    color: Colors.black,
                  ),
                  title: const Text('Guide'),
                  onTap: () => {}),
              // const Gap(10),
              // const Divider(),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        );
      });
}

void _modalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SizedBox(
          child: Wrap(
            children: <Widget>[
              // const Divider(),
              ListTile(
                  leading: const Icon(
                    Icons.settings_outlined,
                    color: Colors.black,
                  ),
                  title: const Text('Settings'),
                  onTap: () => {}),
              // const Divider(),
              ListTile(
                leading: const Icon(
                  Icons.schedule_outlined,
                  color: Colors.black,
                ),
                title: const Text('Your activity'),
                onTap: () => {},
              ),
              // const Divider(),
              ListTile(
                  leading: const Icon(
                    Icons.update_outlined,
                    color: Colors.black,
                  ),
                  title: const Text('Archive'),
                  onTap: () => {}),
              // const Divider(),
              ListTile(
                  leading: const Icon(
                    Icons.qr_code_outlined,
                    color: Colors.black,
                  ),
                  title: const Text('QR code'),
                  onTap: () => {}),
              // const Divider(),
              ListTile(
                  leading: const Icon(
                    Icons.bookmark_outline,
                    color: Colors.black,
                  ),
                  title: const Text('Saved'),
                  onTap: () => {}),
              // const Divider(),

              ListTile(
                  leading: const Icon(
                    Icons.fact_check_outlined,
                    color: Colors.black,
                  ),
                  title: const Text('Digital collectibles'),
                  onTap: () => {}),
              // const Divider(),
              ListTile(
                  leading: const Icon(
                    Icons.list,
                    color: Colors.black,
                  ),
                  title: const Text('Close friends'),
                  onTap: () => {}),
              // const Divider(),
              ListTile(
                  leading: const Icon(
                    Icons.star_outline,
                    color: Colors.black,
                  ),
                  title: const Text('Favourites'),
                  onTap: () => {}),
              // const Divider(),
            ],
          ),
        );
      });
}
