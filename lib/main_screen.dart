import 'package:flutter/material.dart';
import 'package:spotwaze/gps/parking_location_screen.dart';
import 'package:spotwaze/widgetts/drawer.dart';

enum SingingCharacter { Now, Later }

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  SingingCharacter? _character = SingingCharacter.Now;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Text(
                        "Filters",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      onPressed: bottomSheetNow,
                      child: Text(
                        "Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      onPressed: bottomSheetAny,
                      child: Text(
                        "Any Parking",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
    );
  }

  void bottomSheetNow() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: const Text(
                  'When do you need parking?',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
              ListTile(
                title: const Text('Now'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.Now,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Later'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.Later,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                    laterDropDown();
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(fixedSize: Size(113, 20)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Clear'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff613EEA),
                          fixedSize: Size(113, 20)),
                      child: Text('Apply'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => ParkingLocationScreen()));
                      }),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void laterDropDown() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 400,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: const Text(
                  'When do you need parking?',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
              ListTile(
                title: const Text('Now'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.Now,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Later'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.Later,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: const Text(
                  'Select Day',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 70,
                    height: 30,
                    child: Card(
                      child: Text(
                        "Mon",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 70,
                    height: 30,
                    child: Card(
                      child: Text(
                        "Tue",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 70,
                    height: 30,
                    child: Card(
                      child: Text(
                        "Wed",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 70,
                    height: 30,
                    child: Card(
                      child: Text(
                        "Thurs",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 70,
                    height: 30,
                    child: Card(
                      child: Text(
                        "Fri",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 70,
                    height: 30,
                    child: Card(
                      child: Text(
                        "Sat",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 70,
                    height: 30,
                    child: Card(
                      child: Text(
                        "Sun",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: const Text(
                  'Select A Window Time',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 100,
                    height: 60,
                    child: Card(
                      child: Center(
                        child: Text(
                          "Any Time",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 100,
                    height: 60,
                    child: Card(
                      child: Center(
                        child: Text(
                          "Start\n 9 Am",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 100,
                    height: 60,
                    child: Card(
                      child: Center(
                        child: Text(
                          "Start\n 9 PM",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(fixedSize: Size(113, 20)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Clear'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff613EEA),
                          fixedSize: Size(113, 20)),
                      child: Text('Apply'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => ParkingLocationScreen()));
                      }),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void bottomSheetAny() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: const Text(
                  'When do you need parking?',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 70,
                    height: 30,
                    child: Card(
                      child: Text(
                        "Any",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 70,
                    height: 30,
                    child: Card(
                      child: Text(
                        "Free",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 70,
                    height: 30,
                    child: Card(
                      child: Text(
                        "Public",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 70,
                    height: 30,
                    child: Card(
                      child: Text(
                        "Street",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 70,
                    height: 30,
                    child: Card(
                      child: Text(
                        "Private",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 90,
                    height: 30,
                    child: Card(
                      child: Text(
                        "Ev Charger",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(fixedSize: Size(113, 20)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Clear'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff613EEA),
                          fixedSize: Size(113, 20)),
                      child: Text('Apply'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => ParkingLocationScreen()));
                      }),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
