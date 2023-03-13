import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class editProfile extends StatelessWidget {
  const editProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.close,
            color: Colors.black,
            size: 25,
          ),
        ),
        title: const Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.done,
              color: Colors.blue,
              size: 25,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        // alignment: Alignment.centerLeft,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 35,
                  foregroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'),
                ),
                const Gap(20),
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(255, 241, 240, 240)),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add_reaction_outlined,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ],
            ),
            const Gap(20),
            const Text(
              'Edit picture or avatar',
              style: TextStyle(color: Colors.blue),
            ),
            const Gap(20),
            const TextField(
              decoration: InputDecoration(
                  label: Text(
                'Name',
                style: TextStyle(fontSize: 14),
              )),
            ),
            const Gap(10),
            const TextField(
              decoration: InputDecoration(
                  label: Text(style: TextStyle(fontSize: 14), 'Username')),
            ),
            const Gap(10),
            const TextField(
              decoration: InputDecoration(
                  label: Text(style: TextStyle(fontSize: 14), 'Bio')),
            ),
            const Gap(10),
            Container(
                alignment: Alignment.centerLeft,
                height: 50,
                child: const Text('Add Link')),
            // const Gap(10),
            const Divider(),
            Container(
                alignment: Alignment.centerLeft,
                height: 50,
                child: const Text(
                  'Connected Facebook Page',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )),
            // const Divider(),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Page'),
                Icon(Icons.arrow_forward_ios_outlined)
              ],
            ),
            const Gap(10),
            const Divider(),
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              child: const Text(
                'Switch to Professional account',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            // const Gap(10),
            const Divider(),
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              child: const Text(
                'Personal information settings',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
