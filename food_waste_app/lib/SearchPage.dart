import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _Search createState() => _Search();
}

class _Search extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.search),
          onPressed: onPressed,
        ),
        title: Text("Search"),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          header(),
          SizedBox(height: 10),
          subheader(),
          SizedBox(height: 10),
          list(),
        ],
      ),
    );
  }

  Widget subheader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 10),
        Text(
          "Filter",
          style: TextStyle(fontSize: 15, color: Colors.blue),
        ),
        SizedBox(width: 170),
        Text(
          "Sort by: ",
          style: TextStyle(fontSize: 15),
        ),
        Text(
          "Price (Low to High)",
          style: TextStyle(fontSize: 15, color: Colors.blue),
        ),
      ],
    );
  }

  Widget header() {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          size: 60,
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Toronto, Canada",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "within 20 km",
              style: TextStyle(fontSize: 15),
            ),
            Text(
              "Change location",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  decoration: TextDecoration.underline),
            ),
          ],
        ),
      ],
    );
  }

  Widget list() {
    return Container(
      height: 400,
      child: ListView(
        children: [
          item1(),
        ],
      ),
    );
  }

  Widget item1() {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("lib/assets/sushi_small.jpg"),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sushi Place (until 5:30)",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "12 Bloor Street, Toronto, ON",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "Sushi",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "10+\n\$5",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  void onPressed() {}
}
