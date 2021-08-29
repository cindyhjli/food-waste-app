import 'package:flutter/material.dart';

class RestaurantProfile extends StatefulWidget {
  @override
  _RestaurantProfileState createState() => _RestaurantProfileState();
}

class _RestaurantProfileState extends State<RestaurantProfile> {
  final _formKey_name = GlobalKey<FormState>();
  final _formKey_address = GlobalKey<FormState>();
  final _formKey_telephone = GlobalKey<FormState>();
  final _formKey_website = GlobalKey<FormState>();

  TextEditingController controller_name = TextEditingController();
  TextEditingController controller_address = TextEditingController();
  TextEditingController controller_telephone = TextEditingController();
  TextEditingController controller_website = TextEditingController();

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
            name(),
            address(),
            telephone(),
            website(),
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

  Widget name() {
    return Row(
      children: [
        Text(
          "Name",
          style: TextStyle(fontSize: 20),
        ),
        Expanded(child: enterName())
      ],
    );
  }

  Widget address() {
    return Row(
      children: [
        Text(
          "Address",
          style: TextStyle(fontSize: 20),
        ),
        Expanded(child: enterAddress())
      ],
    );
  }

  Widget telephone() {
    return Row(
      children: [
        Text(
          "Telephone",
          style: TextStyle(fontSize: 20),
        ),
        Expanded(child: enterTelephone())
      ],
    );
  }

  Widget website() {
    return Row(
      children: [
        Text(
          "Website",
          style: TextStyle(fontSize: 20),
        ),
        Expanded(child: enterWebsite())
      ],
    );
  }

  Widget logo() {
    return Row(
      children: [
        Text(
          "Logo",
          style: TextStyle(fontSize: 20),
        ),
        Expanded(child: uploadLogo())
      ],
    );
  }

  Widget photo() {
    return Row(
      children: [
        Text(
          "Photo",
          style: TextStyle(fontSize: 20),
        ),
        Expanded(child: uploadPhoto())
      ],
    );
  }

  Widget menuDetails() {
    return Row(
      children: [
        Text(
          "Menu Details",
          style: TextStyle(fontSize: 20),
        ),
        Expanded(child: enterMenuDetails())
      ],
    );
  }

  Widget enterName() {
    return Form(
      key: _formKey_name,
      child: Container(
        margin: EdgeInsets.all(25),
        child: TextFormField(
          controller: controller_name,
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
      key: _formKey_address,
      child: Container(
        margin: EdgeInsets.all(25),
        child: TextFormField(
          controller: controller_address,
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
      key: _formKey_telephone,
      child: Container(
        margin: EdgeInsets.all(25),
        child: TextFormField(
          controller: controller_telephone,
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
      key: _formKey_website,
      child: Container(
        margin: EdgeInsets.all(25),
        child: TextFormField(
          controller: controller_website,
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
}

class enterMenuDetails extends StatefulWidget {
   
   @override
   State<enterMenuDetails> createState() => _enterMenuDetailsState();
}

class _enterMenuDetailsState extends State<enterMenuDetails> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.black;
    }
    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}


  Widget submitButton() {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.blue)),
      onPressed: () {
        if (_formKey_name.currentState!.validate() &&
            _formKey_address.currentState!.validate() &&
            _formKey_telephone.currentState!.validate() &&
            _formKey_website.currentState!.validate()) {
          controller_name.clear();
          controller_address.clear();
          controller_telephone.clear();
          controller_website.clear();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.blue,
              content: Text(
                "Profile Updated!!",
                style: TextStyle(fontSize: 30),
              ),
              duration: Duration(milliseconds: 1000),
            ),
          );
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
