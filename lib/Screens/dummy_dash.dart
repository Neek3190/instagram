import 'package:flutter/material.dart';

class DummyDash extends StatefulWidget {
  DummyDash({
    super.key,
    this.name = 'Empty',
  });

  @override
  String name;

  @override
  State<DummyDash> createState() => _DummyDashState();
}

class _DummyDashState extends State<DummyDash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.name),
      ),
    );
  }
}
