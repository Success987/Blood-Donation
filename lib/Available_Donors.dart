import 'package:flutter/material.dart';

class AvailableDonors extends StatefulWidget {
  const AvailableDonors({Key? key}) : super(key: key);

  @override
  State<AvailableDonors> createState() => _AvailableDonorsState();
}

class _AvailableDonorsState extends State<AvailableDonors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Available Donors"),
        backgroundColor: Colors.red[900],
      ),
    );
  }
}
