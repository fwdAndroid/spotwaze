import 'package:flutter/material.dart';
import 'package:spotwaze/gps/car_park_detail.dart';
import 'package:spotwaze/widgetts/drawer.dart';

class ParkingLocationScreen extends StatefulWidget {
  const ParkingLocationScreen({super.key});

  @override
  State<ParkingLocationScreen> createState() => _ParkingLocationScreenState();
}

class _ParkingLocationScreenState extends State<ParkingLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/map.png"),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      suffixIcon: Icon(Icons.close),
                      prefixIcon: Icon(Icons.pin_drop),
                      filled: true,
                      hintText: "Eden Garden"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => CarParkDetail()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/mmm.png",
                      height: 100,
                    ),
                    Image.asset(
                      "assets/mmm.png",
                      height: 100,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => CarParkDetail()));
                },
                child: Image.asset(
                  "assets/mmm.png",
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
