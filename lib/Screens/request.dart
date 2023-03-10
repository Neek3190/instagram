import 'package:flutter/material.dart';

class request extends StatelessWidget {
  const request({super.key});

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
            'Notifications',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1609010697446-11f2155278f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                ),
                title: Text("Follow Requests"),
                subtitle: Text("Approve or ignore requests"),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Today",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    )),
              )
            ],
          ),
        ));
  }
}
