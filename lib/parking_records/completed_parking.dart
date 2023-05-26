import 'package:flutter/material.dart';
import 'package:spotwaze/ticket/view_ticket.dart';

class CompletedParking extends StatefulWidget {
  const CompletedParking({super.key});

  @override
  State<CompletedParking> createState() => _CompletedParkingState();
}

class _CompletedParkingState extends State<CompletedParking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset("assets/ar.png"),
                      trailing: const Text(
                        "Completed",
                        style:
                            TextStyle(color: Color(0XFF613EEA), fontSize: 15),
                      ),
                      title: Text(
                        "Allington Paddock",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      subtitle: Text("\$6.58 per hr"),
                    ),
                    Divider(),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Color(0xff613EEA),
                            fixedSize: Size(260, 55)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => ViewTicket()));
                        },
                        child: Text(
                          "View Ticket",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
