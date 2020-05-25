import 'package:flutter/material.dart';
import 'Layout.dart';
import 'package:flutter/services.dart'; //Used to keep in portrait mode i.e in vertical screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      //Keeps in Vertical screen i.e Doesn't allow mobile to go in horizontal screen
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      theme: ThemeData(
          canvasColor: Color(
              0xFFFFE08E) //When the container edges are curved in MangoScreen in info of
          //fruit section there is a white background formed to cover that up canvasColor
          //is used with specified color so it can blend it with our fruit image section
          //change color and see in MangoScreen screen yourself
          ),
      debugShowCheckedModeBanner: false, //Debug banner removed
      title: 'Fruit App', //title for the app
      home: Layout(), // Home i.e main screen in Layout Class
    );
  }
}
