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

  Widget title() {
    return Text(
      "  Your Mystery Meals",
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}

class mealCounter extends StatefulWidget {
  @override
  _mealCounter createState() => _mealCounter();
}

class _mealCounter extends State<RestaurantHomepage> {
  int _mealCount = 0;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Number of Meals"),
      trailing: Row(
        children: <Widget>[
          _mealCount != 0? IconButton(icon: Icon(Icons.remove), onPressed: ()=>setState(()=>_mealCount--),): Container(),
            Text(_mealCount.toString()),
            IconButton(icon: Icon(Icons.add), onPressed: ()=>setState(()=>_mealCount++))
        ]
      )
    );
  }
}
