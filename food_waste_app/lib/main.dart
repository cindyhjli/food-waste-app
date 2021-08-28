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

  Widget menuDetails() {
    return Text("Menu Details");
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

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
