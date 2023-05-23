import 'package:flutter/material.dart';
import 'package:spotwaze/main_screen.dart';
import 'package:spotwaze/widgetts/drawer.dart';

class ConfrimBookingScreen extends StatefulWidget {
  const ConfrimBookingScreen({super.key});

  @override
  State<ConfrimBookingScreen> createState() => _ConfrimBookingScreenState();
}

class _ConfrimBookingScreenState extends State<ConfrimBookingScreen> {
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
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 40,
                width: 345,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Card(
                  child: Center(
                    child: Text(
                      "Lekki Gardens Car Park A Space A",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Image.asset("assets/scan.png", height: 100),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Booking Details",
                          style: TextStyle(
                              color: Color(0xff3B414B),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Check-in Time:",
                              style: TextStyle(
                                  color: Color(0xff3B414B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "11:AM",
                              style: TextStyle(
                                  color: Color(0xff3B414B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Check-out Time:",
                              style: TextStyle(
                                  color: Color(0xff3B414B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "11:AM",
                              style: TextStyle(
                                  color: Color(0xff3B414B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Divider(),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Specification",
                              style: TextStyle(
                                  color: Color(0xff3B414B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "None",
                              style: TextStyle(
                                  color: Color(0xff3B414B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Don’t know the route?  Get Directions",
                style: TextStyle(color: Color(0xff757F8C), fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Color(0xff613EEA),
                      fixedSize: Size(320, 56)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => MainScreen()));
                  },
                  child: Text(
                    "Go Back to Home Screen",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
