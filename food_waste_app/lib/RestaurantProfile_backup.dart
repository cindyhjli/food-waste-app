import 'package:flutter/material.dart';

class RestaurantProfile extends StatefulWidget {
  @override
  _RestaurantProfileState createState() => _RestaurantProfileState();
}

class _RestaurantProfileState extends State<RestaurantProfile> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurant Profile"),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: onPressed,
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(22),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: 20,
              child: Text(
                "Name",
                style: TextStyle(fontSize: 6),
              ),
            ),
            enterName(),
            Container(
              alignment: Alignment.topLeft,
              height: 20,
              child: Text(
                "Address",
                style: TextStyle(fontSize: 6),
              ),
            ),
            enterAddress(),
            Container(
              alignment: Alignment.topLeft,
              height: 20,
              child: Text(
                "Telephone",
                style: TextStyle(fontSize: 6),
              ),
            ),
            enterTelephone(),
            Container(
              alignment: Alignment.topLeft,
              height: 20,
              child: Text(
                "Website",
                style: TextStyle(fontSize: 6),
              ),
            ),
            enterWebsite(),
            Container(
              alignment: Alignment.topLeft,
              height: 20,
              child: Text(
                "Logo",
                style: TextStyle(fontSize: 6),
              ),
            ),
            uploadLogo(),
            Container(
              alignment: Alignment.topLeft,
              height: 20,
              child: Text(
                "Photo",
                style: TextStyle(fontSize: 6),
              ),
            ),
            uploadPhoto(),
            Container(
              alignment: Alignment.topLeft,
              height: 20,
              child: Text(
                "Menu Details",
                style: TextStyle(fontSize: 6),
              ),
            ),
            menuDetails(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  void onPressed() {
    // String current_page = "restaurantLogin";
    // Navigator.of(context).pushAndRemoveUntil(
    //   PageRouteBuilder(
    //     pageBuilder: (context, animation, animation2) => RestaurantLogin(),
    //     transitionDuration: Duration(seconds: 0)),
    //   (route) => false);
    print("Pressed");
  }

  Widget enterName() {
    return Form(
      key: _formKey,
      child: Container(
        margin: EdgeInsets.all(25),
        color: Colors.blue,
        child: TextFormField(
          controller: controller,
          maxLines: null,
          validator: (value) {
            if (value!.isEmpty) {
              return "Required";
            }
          },
        ),
      ),
    );
  }

  Widget enterAddress() {
    return Form(
      key: _formKey,
      child: Container(
        margin: EdgeInsets.all(25),
        color: Colors.blue,
        child: TextFormField(
          controller: controller,
          maxLines: null,
          validator: (value) {
            if (value!.isEmpty) {
              return "Required";
            }
          },
        ),
      ),
    );
  }

  Widget enterTelephone() {
    return Form(
      key: _formKey,
      child: Container(
        margin: EdgeInsets.all(25),
        color: Colors.blue,
        child: TextFormField(
          controller: controller,
          maxLines: null,
          validator: (value) {
            if (value!.isEmpty) {
              return "Required";
            }
          },
        ),
      ),
    );
  }

  Widget enterWebsite() {
    return Form(
      key: _formKey,
      child: Container(
        margin: EdgeInsets.all(25),
        color: Colors.blue,
        child: TextFormField(
          controller: controller,
          maxLines: null,
          validator: (value) {
            if (value!.isEmpty) {
              return "Required";
            }
          },
        ),
      ),
    );
  }

  Widget uploadLogo() {
    return Text("Upload Logo");
  }

  Widget uploadPhoto() {
    return Text("Upload Photo");
  }

  Widget menuDetails() {
    return Text("Menu Details");
  }

  Widget submitButton() {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.blue)),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          controller.clear();
          // Navigator.of(context).pushAndRemoveUntil(
          //   PageRouteBuilder(
          //     pageBuilder: (context.animation, animation2) => RestaurantHome(),
          //     transitionDuration: Duration(seconds: 0)),
          //   (route) => false);
        }
      },
      child: Text(
        'Update',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
