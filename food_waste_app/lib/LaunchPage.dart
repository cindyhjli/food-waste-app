import 'package:flutter/material.dart';

class LaunchPage extends StatefulWidget {
  @override
  _LaunchPage createState() => _LaunchPage();
}

class _LaunchPage extends State<LaunchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            name(),
            SizedBox(height: 120),
            customer(),
            SizedBox(height: 10),
            restaurant(),
          ],
        ),
      ),
    );
  }

  Widget name() {
    return Text(
      "NAME OF \nOUR APP",
      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
    );
  }

  Widget customer() {
    return Container(
      width: 380,
      height: 150,
      color: Colors.blue,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.blue),
        onPressed: restaurantOption,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "CONTINUE AS",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Text(
              "CUSTOMER",
              style: TextStyle(color: Colors.white, fontSize: 60),
            ),
          ],
        ),
      ),
    );
  }

  Widget restaurant() {
    return Container(
      width: 380,
      height: 150,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.blue),
        onPressed: restaurantOption,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "CONTINUE AS",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Text(
              "RESTAURANT",
              style: TextStyle(color: Colors.white, fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }

  void customerOption() {}
  void restaurantOption() {}
}
