import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sta/Screens/dummy_dash.dart';

class LoginSample extends StatefulWidget {
  const LoginSample({super.key});

  @override
  State<LoginSample> createState() => _LoginSampleState();
}

String? name;

TextEditingController _nameController = TextEditingController();

class _LoginSampleState extends State<LoginSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
            ),
            const Gap(30),
            InkWell(
                onTap: () {
                  setState(() {
                    name = _nameController.text;

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DummyDash(
                            name: _nameController.text,
                          ),
                        ));
                  });
                },
                child: const Text('Submit')),
            Text(_nameController.text)
          ],
        ),
      ),
    );
  }
}
