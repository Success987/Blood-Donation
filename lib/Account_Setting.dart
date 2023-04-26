import 'package:flutter/material.dart';

class Account_Setting extends StatefulWidget {
  const Account_Setting({Key? key}) : super(key: key);

  @override
  State<Account_Setting> createState() => _Account_SettingState();
}

class _Account_SettingState extends State<Account_Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text("Account Setting"),
      ),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            child: Card(
              elevation: 10,
              margin: const EdgeInsets.all(15.0),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Language Setting',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.red[400],
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(color: Color(0XFFD1D5D8), width: 3.0),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          child: Text("Change Language",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.maxFinite,
            child: Card(
              elevation: 10,
              margin: const EdgeInsets.all(15.0),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Theme Setting',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.red[400],
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(color: Color(0XFFD1D5D8), width: 3.0),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          child: Text("Change Theme",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.maxFinite,
            child: Card(
              elevation: 10,
              margin: const EdgeInsets.all(15.0),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password Setting',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.red[400],
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(color: Color(0XFFD1D5D8), width: 3.0),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          child: Text("Manage Password",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.maxFinite,
            child: Card(
              elevation: 10,
              margin: const EdgeInsets.all(15.0),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'App Version',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text("3.1.4"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
