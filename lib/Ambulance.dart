import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class Ambulance extends StatefulWidget {
  const Ambulance({Key? key}) : super(key: key);

  @override
  State<Ambulance> createState() => _AmbulanceState();
}

class _AmbulanceState extends State<Ambulance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Find Ambulance"),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Form(
              child: Column(children: [
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFFD1D5D8), width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2.0),
                ),
                hintText: "Search by district",
                prefixIcon: Icon(Icons.search),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        actionsAlignment: MainAxisAlignment.start,
                        titlePadding: EdgeInsets.all(0),
                        title: Container(
                          width: double.maxFinite,
                          color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                              child: Text(
                                'Frontline Hospital',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        actions: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Contact: XXX",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Address: Old Baneshwor, Kathmandu",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Phone: 01-8576236",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.email,
                                        color: Colors.grey[500],
                                      ),
                                      label: Text(
                                        "SMS",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.phone,
                                        color: Colors.grey[500],
                                      ),
                                      label: Text(
                                        "CALL",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Fontisto.ambulance,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Frontline Hospital",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Old Baneshwor, Kathmandu",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "01-8576236",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        actionsAlignment: MainAxisAlignment.start,
                        titlePadding: EdgeInsets.all(0),
                        title: Container(
                          width: double.maxFinite,
                          color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                              child: Text(
                                'ManMohan Hospital',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        actions: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Contact: XXX",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Address: Swyambu, Kathmandu",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Phone: 01-2356476",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.email,
                                        color: Colors.grey[500],
                                      ),
                                      label: Text(
                                        "SMS",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.phone,
                                        color: Colors.grey[500],
                                      ),
                                      label: Text(
                                        "CALL",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Fontisto.ambulance,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Manmohan Hospital",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Swyambu, Kathmandu",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "01-8576236",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        actionsAlignment: MainAxisAlignment.start,
                        titlePadding: EdgeInsets.all(0),
                        title: Container(
                          width: double.maxFinite,
                          color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                              child: Text(
                                'Medicity Hospital',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        actions: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Contact: XXX",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Address: Nakkhu, Lalitpur",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Phone: 01-3658294",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.email,
                                        color: Colors.grey[500],
                                      ),
                                      label: Text(
                                        "SMS",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.phone,
                                        color: Colors.grey[500],
                                      ),
                                      label: Text(
                                        "CALL",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Fontisto.ambulance,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Medicity Hospital",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Nakkhu, Lalitpur",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "01-8576236",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        actionsAlignment: MainAxisAlignment.start,
                        titlePadding: EdgeInsets.all(0),
                        title: Container(
                          width: double.maxFinite,
                          color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                              child: Text(
                                'Green City Hospital',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        actions: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Contact: XXX",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Address: Gongabu, Kathmandu",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Phone: 01-7542016",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.email,
                                        color: Colors.grey[500],
                                      ),
                                      label: Text(
                                        "SMS",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.phone,
                                        color: Colors.grey[500],
                                      ),
                                      label: Text(
                                        "CALL",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Fontisto.ambulance,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Green City Hospital",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Gongabu, Kathmandu",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "01-8576236",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        actionsAlignment: MainAxisAlignment.start,
                        titlePadding: EdgeInsets.all(0),
                        title: Container(
                          width: double.maxFinite,
                          color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                              child: Text(
                                'Civil Hospital',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        actions: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Contact: XXX",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Address: New Baneshwor, Kathmandu",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Phone: 01-9867254",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.email,
                                        color: Colors.grey[500],
                                      ),
                                      label: Text(
                                        "SMS",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.phone,
                                        color: Colors.grey[500],
                                      ),
                                      label: Text(
                                        "CALL",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Fontisto.ambulance,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Civil Hospital",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "New Baneshwor, Kathmandu",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "01-8576236",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        actionsAlignment: MainAxisAlignment.start,
                        titlePadding: EdgeInsets.all(0),
                        title: Container(
                          width: double.maxFinite,
                          color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                              child: Text(
                                'Bir Hospital',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        actions: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Contact: XXX",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Address: Ratnapark, Kathmandu",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Phone: 01-6574238",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.email,
                                        color: Colors.grey[500],
                                      ),
                                      label: Text(
                                        "SMS",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.phone,
                                        color: Colors.grey[500],
                                      ),
                                      label: Text(
                                        "CALL",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Fontisto.ambulance,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bir Hospital",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Ratnapark, Kathmandu",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "01-8576236",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        actionsAlignment: MainAxisAlignment.start,
                        titlePadding: EdgeInsets.all(0),
                        title: Container(
                          width: double.maxFinite,
                          color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                              child: Text(
                                'HAMS Hospital',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        actions: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Contact: XXX",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Address: Bouddha, Kathmandu",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Phone: 01-6897534",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.email,
                                        color: Colors.grey[500],
                                      ),
                                      label: Text(
                                        "SMS",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  TextButton.icon(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.phone,
                                        color: Colors.grey[500],
                                      ),
                                      label: Text(
                                        "CALL",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Fontisto.ambulance,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "HAMS Hospital",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Bouddha, Kathmandu",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _launchDialer('01-8576236');
                              });
                            },
                            child: Text(
                              "01-8576236",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ])),
        ));
  }
}

void _launchDialer(String phoneNumber) async {
  final url = 'tel:$phoneNumber';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
