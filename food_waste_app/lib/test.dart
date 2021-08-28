

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "RestaurantProfile.dart";

void main() {
  runApp(Test());
  
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RestaurantProfile(),
    );
  }
}