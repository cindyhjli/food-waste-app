import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class RestaurantProfile extends StatefulWidget {
  const ({ Key? key }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<RestaurantProfile> {
  final _FormKey =GlobalKey<FormState>();
  DateTime start, end;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurant Profile"),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: onPressed1,
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(22),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: 8.0.h,

            )
          ]
        )
      )
    )

      
    );
  }
}