import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:spotwaze/auth/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fill Your Profile",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                "assets/profile.png",
                height: 120,
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffD9D9D9).withOpacity(.5),
                    hintText: "Full Name",
                    prefixIcon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 1, color: Color(0xffEBEBEB)), //<-- SEE HERE
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),

                      borderSide: BorderSide(
                          width: 1, color: Color(0xffEBEBEB)), //<-- SEE HERE
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(width: 1, color: Color(0xffEBEBEB)),
                    ),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffD9D9D9).withOpacity(.5),
                    hintText: "Date of Birth",
                    prefixIcon: Icon(Icons.calendar_month),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 1, color: Color(0xffEBEBEB)), //<-- SEE HERE
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),

                      borderSide: BorderSide(
                          width: 1, color: Color(0xffEBEBEB)), //<-- SEE HERE
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(width: 1, color: Color(0xffEBEBEB)),
                    ),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffD9D9D9).withOpacity(.5),
                    hintText: "Vehicle Registration Number",
                    prefixIcon: Icon(Icons.verified_user_sharp),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 1, color: Color(0xffEBEBEB)), //<-- SEE HERE
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),

                      borderSide: BorderSide(
                          width: 1, color: Color(0xffEBEBEB)), //<-- SEE HERE
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(width: 1, color: Color(0xffEBEBEB)),
                    ),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffD9D9D9).withOpacity(.5),
                    hintText: "Phone Number",
                    prefixIcon: Icon(Icons.mobile_friendly),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 1, color: Color(0xffEBEBEB)), //<-- SEE HERE
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),

                      borderSide: BorderSide(
                          width: 1, color: Color(0xffEBEBEB)), //<-- SEE HERE
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(width: 1, color: Color(0xffEBEBEB)),
                    ),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffD9D9D9).withOpacity(.5),
                    hintText: "Gender",
                    prefixIcon: Icon(Icons.male),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 1, color: Color(0xffEBEBEB)), //<-- SEE HERE
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),

                      borderSide: BorderSide(
                          width: 1, color: Color(0xffEBEBEB)), //<-- SEE HERE
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(width: 1, color: Color(0xffEBEBEB)),
                    ),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => LoginScreen()));
                  },
                  child: Text("Save"),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      fixedSize: Size(337, 53),
                      backgroundColor: Color(0xff613EEA)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
