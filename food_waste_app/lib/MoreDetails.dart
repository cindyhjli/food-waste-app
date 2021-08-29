import 'package:flutter/material.dart';

class MoreDetails extends StatefulWidget {
  @override
  _MoreDetails createState() => _MoreDetails();
}

class _MoreDetails extends State<MoreDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [background(), like()],
      ),
    );
  }

  Widget background() {
    return Image(
      image: AssetImage("lib/assets/more_details1.png"),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
  
  Widget like() {
    return Positioned(
      child: IconButton(
        icon: Icon(
          Icons.favorite,
          size: 50,
        ),
        onPressed: onPressed,
      ),
      left: 325,
      bottom: 455,
    );
  }

  void onPressed() {
    return Icon(
      icon: Icons.favorite,
      size: 50,
      
    )
      
    });
  }
}
