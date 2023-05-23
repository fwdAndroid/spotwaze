import 'package:flutter/material.dart';
import 'package:spotwaze/widgetts/drawer.dart';

class PayForBooking extends StatefulWidget {
  const PayForBooking({super.key});

  @override
  State<PayForBooking> createState() => _PayForBookingState();
}

class _PayForBookingState extends State<PayForBooking> {
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
              Image.asset("assets/s.png", height: 100),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Booked Space:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "Lekki Gardens Car\nPark A",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Divider(),
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
                              "2:AM",
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
                              "Estimated Duration:",
                              style: TextStyle(
                                  color: Color(0xff3B414B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "3 Hrs ",
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
                              "Unique ID",
                              style: TextStyle(
                                  color: Color(0xff3B414B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "1345",
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
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: StadiumBorder(),
                                backgroundColor: Color(0xff613EEA),
                                fixedSize: Size(320, 40)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => PayForBooking()));
                            },
                            child: Text(
                              "View Booking Details",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
