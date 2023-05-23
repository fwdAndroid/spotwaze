import 'package:flutter/material.dart';
import 'package:spotwaze/booking/confrim_booking_screen.dart';
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
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/emojione-party-popper.png",
                          height: 50,
                        ),
                        Text(
                          "Awesome! You’re done parking",
                          style: TextStyle(
                              color: Color(0xff3B414B),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10),
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
                          children: [
                            Text(
                              "Parking Session",
                              style: TextStyle(
                                  color: Color(0xff3B414B),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.start,
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
                              "Total:",
                              style: TextStyle(
                                  color: Color(0xff3B414B),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "N1200",
                              style: TextStyle(
                                  color: Color(0xff3B414B),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Color(0xff613EEA),
                      fixedSize: Size(320, 56)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => ConfrimBookingScreen()));
                  },
                  child: Text(
                    "Pay",
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
