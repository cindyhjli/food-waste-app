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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 45),
          title(),
          mealCounter(),
        ],
      ),
    );
  }

  Widget number() {
    return Row(
      children: [
        SizedBox(
          width: 30,
        ),
        Text(
          "Number of \nMeals",
          style: TextStyle(fontSize: 30, color: Colors.blue),
        ),
        SizedBox(
          width: 130,
        ),
        Text(
          "10+",
          style: TextStyle(fontSize: 40),
        )
      ],
    );
  }

  Widget price() {
    return Row(
      children: [
        SizedBox(
          width: 30,
        ),
        Text(
          "Price",
          style: TextStyle(fontSize: 30, color: Colors.blue),
        ),
        SizedBox(
          width: 230,
        ),
        Text(
          "\$5",
          style: TextStyle(fontSize: 40),
        )
      ],
    );
  }

  Widget time() {
    return Row(
      children: [
        SizedBox(
          width: 30,
        ),
        Text(
          "Time",
          style: TextStyle(fontSize: 30, color: Colors.blue),
        ),
        SizedBox(
          width: 110,
        ),
      ],
    );
  }

  Widget time2() {
    return Row(
      children: [
        SizedBox(
          width: 30,
        ),
        Text(
          "5:00PM-6:00PM",
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }

  Widget title() {
    return Text(
      "  Your Mystery Meals",
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }

  Widget button() {
    return Container(
      width: 350,
      height: 60,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.blue),
        onPressed: onPressed,
        child: Text(
          "View Restaurant Page",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }

  void onPressed() {}
}
