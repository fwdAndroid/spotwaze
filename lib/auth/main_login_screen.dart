import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:social_login_buttons/social_login_buttons.dart';
import 'package:spotwaze/auth/login_screen.dart';

class MainLoginScreen extends StatefulWidget {
  const MainLoginScreen({super.key});

  @override
  State<MainLoginScreen> createState() => _MainLoginScreenState();
}

class _MainLoginScreenState extends State<MainLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Let's you in",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: SocialLoginButton(
              borderRadius: 20,
              fontSize: 20,
              text: 'Continue with Google',
              buttonType: SocialLoginButtonType.google,
              mode: SocialLoginButtonMode.single,
              onPressed: () {},
            ),
          ),
          Text("OR"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => LoginScreen()));
            },
            child: Text("Sign in with Email"),
            style: ElevatedButton.styleFrom(
                shape: StadiumBorder(), fixedSize: Size(337, 60)),
          )
        ],
      ),
    );
  }
}
