import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:social_login_buttons/social_login_buttons.dart';
import 'package:spotwaze/auth/login_screen.dart';
import 'package:spotwaze/profile/profile_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Text(
                "Create Your\nAccount",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 34),
              )),
          SizedBox(
            height: 40,
          ),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffD9D9D9).withOpacity(.5),
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email),
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
                    borderSide: BorderSide(width: 1, color: Color(0xffEBEBEB)),
                  ),
                ),
              )),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffD9D9D9).withOpacity(.5),
                  hintText: "Password",
                  prefixIcon: Icon(Icons.password),
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
                    borderSide: BorderSide(width: 1, color: Color(0xffEBEBEB)),
                  ),
                ),
              )),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => ProfileScreen()));
                },
                child: Text("Sign Up"),
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    fixedSize: Size(337, 53),
                    backgroundColor: Color(0xff613EEA)),
              ),
            ),
          ),
          Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => LoginScreen()));
                  },
                  child: Text("Already Have an Account"))),
          SizedBox(
            height: 30,
          ),
          Image.asset("assets/or.png"),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: SocialLoginButton(
              borderRadius: 12,
              fontSize: 15,
              text: 'Continue with Google',
              buttonType: SocialLoginButtonType.google,
              mode: SocialLoginButtonMode.single,
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
