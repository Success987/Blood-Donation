import 'package:flutter/material.dart';

class Available_Donors extends StatefulWidget {
  const Available_Donors({Key? key}) : super(key: key);

  @override
  State<Available_Donors> createState() => _Available_DonorsState();
}

class _Available_DonorsState extends State<Available_Donors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Available Donors"),
      ),
    );
  }
}
