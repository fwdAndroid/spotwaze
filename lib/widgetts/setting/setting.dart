import 'package:flutter/material.dart';
import 'package:spotwaze/widgetts/drawer.dart';

class AppSetting extends StatefulWidget {
  const AppSetting({super.key});

  @override
  State<AppSetting> createState() => _AppSettingState();
}

class _AppSettingState extends State<AppSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/notifications.png",
                          height: 100,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Notificaitons")
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/person.png",
                          height: 100,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Account")
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/language.png",
                          height: 100,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Languages")
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/terms_of_use.png",
                          height: 100,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Term of Use")
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
