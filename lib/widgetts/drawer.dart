import 'package:flutter/material.dart';
import 'package:spotwaze/main_screen.dart';
import 'package:spotwaze/parking_records/parking_records.dart';
import 'package:spotwaze/widgetts/setting/notification.dart';
import 'package:spotwaze/widgetts/setting/setting.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/scan.png"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Fawad Kaleem",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => MainScreen()));
            },
            title: Text("Home"),
            leading: Icon(Icons.home),
          ),
          Divider(),
          ListTile(
            title: Text("Payment Methods"),
            leading: Icon(Icons.payment),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => ParkingRecords()));
            },
            title: Text("Parking History"),
            leading: Icon(Icons.history),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => Noti()));
            },
            title: Text("Notifications"),
            leading: Icon(Icons.notifications),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => AppSetting()));
            },
            title: Text("Setting"),
            leading: Icon(Icons.settings),
          ),
          Divider(),
          ListTile(
            title: Text("Logout"),
            leading: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
