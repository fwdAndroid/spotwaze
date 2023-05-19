import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spotwaze/introscreens/welcome.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Welcome())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 80),
            child: Image.asset(
              "assets/logo.png",
              height: 200,
              width: 300,
            ),
          ),
          Text("Your no.1 parking assistant"),
          SizedBox(
            height: 20,
          ),
          Spacer(),
          Image.asset("assets/undraw_walk_in_the_city_1ma6 1.png"),
        ],
      ),
    );
  }
}
