import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(RestaurantProfile());
}

class RestaurantProfile extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<RestaurantProfile> {
  final _FormKey =GlobalKey<FormState>();
  // DateTime start, end;
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
              height: 8.0.h,
              child: Text(
                "Name",
                style: TextStyle(fontSize: 6),
              ),
            ),
            enterName(),
            Container(
              alignment: Alignment.topLeft,
              height: 8.0.h,
              child: Text(
                "Address",
                style: TextStyle(fontSize: 6),
              ),
            ),
            enterAddress(),
            Container(
              alignment: Alignment.topLeft
              height: 8.0.h,
              child: Text(
                "Telephone",
                style: TextStyle(fontSize: 6),
              ),
            ),
            enterTelephone(),
            Container(
              alignment: Alignment.topLeft
              height: 8.0.h,
              child: Text(
                "Website",
                style: TextStyle(fontSize: 6),
              ),
            ),
            enterWebsite(),
            Container(
              alignment: Alignment.topLeft
              height: 8.0.h,
              child: Text(
                "Logo",
                style: TextStyle(fontSize: 6),
              ),
            ),
            uploadLogo(),
            Container(
              alignment: Alignment.topLeft
              height: 8.0.h,
              child: Text(
                "Photo",
                style: TextStyle(fontSize: 6),  
              ),
            ),
            uploadPhoto(),
            Container(
              alignment: Alignment.topLeft
              height: 8.0.h,
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
    values.current_page = "restaurantLogin";
    Navigator.of(context).pushAndRemoveUntil(
      PageRouteBuilder(
        pageBuilder: (context, animation, animation2) => RestaurantLogin(),
        transitionDuration: Duration(seconds: 0)),
      (route) => false);
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
            if (value.isEmpty) {
              return "Required";
            },
          },
        ),
      ),
    );
  }
  Widget enterAddress() {
    return Form(
      key: _formKey,
      child: Container(
        margin: Edge Insets.all(25),
        color: Colors.blue,
        child: TextFormField(
          controller: controller,
          maxLines: null,
          validator: (value) {
            if (value.isEmpty) {
              return "Required";
            },
          },
        ),
      ),
    );
  }
  Widget enterTelephone() {
    return Form(
      key: _formKey,
      child: Container(
        margin: Edge Insets.all(25),
        color: Colors.blue,
        child: TextFormField(
          controller: controller,
          maxLines: null,
          validator: (value) {
            if (value.isEmpty) {
              return "Required";
            },
          },
        ),
      ),
    );
  }
  Widget enterWebsite() {
    return Form(
      key: _formKey,
      child: Container(
        margin: Edge Insets.all(25),
        color: Colors.blue,
        child: TextFormField(
          controller: controller,
          maxLines: null,
          validator: (value) {
            if (value.isEmpty) {
              return "Required";
            },
          },
        ),
      ),
    );
  }
  Widget uploadLogo()

  Widget uploadPhoto()

  Widget menuDetails()

  Widget submitButton() {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatwProperty.resolveWith(
          (states) => Colors.blue)),
      onPressed: () {
        if (_formKey.currentState.validate()) {
          controller.clear();
          Navigator.of(context).pushAndRemoveUntil(
            PageRouteBuilder(
              pageBuilder: (context.animation, animation2) => RestaurantHome(),
              transitionDuration: Duration(seconds: 0)),
            (route) => false);
          }
        },
      child: Text(
        'Done',
        style: TextStyle(color: Colors.white, fontSize: 3.0.h)
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
