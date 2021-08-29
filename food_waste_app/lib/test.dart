import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "LaunchPage.dart";
import 'RestaurantProfile.dart';
import 'LoginPage.dart';
import 'SearchPage.dart';
import 'CustomerHomepage.dart';

void main() {
  runApp(Test());
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Montserrat"),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: CustomerHomepage(),
    );
  }
}
