import 'dart:async';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int initialValue = 60;

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (t) {
      setState(() {
        initialValue--;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("==== build from scratch =====");
    return Scaffold(
      body: Center(
        child: Text(
          initialValue.toString(),
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}
