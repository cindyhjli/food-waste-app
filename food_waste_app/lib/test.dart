import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_waste_app/MoreDetails.dart';
import "LaunchPage.dart";
import 'RestaurantProfile.dart';
import 'LoginPage.dart';
import 'SearchPage.dart';
import 'CustomerHomepage.dart';
import 'RestaurantEditMeals.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Test());
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: MoreDetails(),
    );
  }
}
