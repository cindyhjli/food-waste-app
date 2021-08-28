

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "LaunchPage.dart";

void main() {
  runApp(Test());
  
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LaunchPage(),
    );
  }
}