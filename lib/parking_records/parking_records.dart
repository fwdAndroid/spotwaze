import 'package:flutter/material.dart';
import 'package:spotwaze/parking_records/cancelled_parking.dart';
import 'package:spotwaze/parking_records/completed_parking.dart';
import 'package:spotwaze/parking_records/ongoing_parking.dart';
import 'package:spotwaze/widgetts/drawer.dart';

class ParkingRecords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: MyDrawer(),
          appBar: AppBar(
            actions: [
              Icon(
                Icons.search,
                color: Colors.black,
              )
            ],
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text('Parking', style: TextStyle(color: Colors.black)),
            bottom: TabBar(
              tabs: [
                Tab(text: "OnGoing"),
                Tab(text: "Completed"),
                Tab(text: "Cancelled ")
              ],
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              dividerColor: Colors.black,
            ),
          ),
          body: TabBarView(
            children: [
              OnGoingParking(),
              CompletedParking(),
              Cancelled(),
            ],
          ),
        ),
      ),
    );
  }
}
