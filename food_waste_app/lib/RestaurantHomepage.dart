import 'package:flutter/material.dart';

class RestaurantHomepage extends StatefulWidget {
  @override
  _RestaurantHomepage createState() => _RestaurantHomepage();
}

class _RestaurantHomepage extends State<RestaurantHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [SizedBox(height: 20,)],
      ),
    );
  }

  Widget title() {
    return Text(
      "Your Mystery Meals",
      style: TextStyle(fontSize: 30),
    );
  }
}
