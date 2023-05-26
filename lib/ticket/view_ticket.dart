import 'package:flutter/material.dart';
import 'package:spotwaze/main_screen.dart';

class ViewTicket extends StatefulWidget {
  const ViewTicket({super.key});

  @override
  State<ViewTicket> createState() => _ViewTicketState();
}

class _ViewTicketState extends State<ViewTicket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Review Summary",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/Group 97.png"),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Image.asset("assets/Group 127.png"),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Color(0xff613EEA),
                  fixedSize: Size(260, 55)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => MainScreen()));
              },
              child: Text(
                "Continue",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
