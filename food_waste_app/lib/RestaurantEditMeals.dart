import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class RestaurantHomepage extends StatefulWidget {
  @override
  _RestaurantHomepage createState() => _RestaurantHomepage();
}

class _RestaurantHomepage extends State<RestaurantHomepage> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 45),
          title(),
          setStartTime(),
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
  Widget setStartTime() {
    return TimePickerSpinner(
      is24HourMode: false,
      normalTextStyle: TextStyle(fontSize: 10, color: Colors.black),
      highlightedTextStyle: TextStyle(fontSize: 15, color: Colors.blue),
      spacing: 10.0,
      itemHeight: 7.0,
      isForce2Digits: true,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
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
