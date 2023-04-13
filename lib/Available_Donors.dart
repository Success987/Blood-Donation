import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:form_app/Reciver.dart';
import 'package:url_launcher/url_launcher.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    bloodGroup.toString(),
                    style: TextStyle(
                        color: Colors.red[500],
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Donors in",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    districtSelect.toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Matched Donors",
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0XFFD1D5D8), width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2.0),
                  ),
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SingleChildScrollView(
                child: Padding(
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
                                    'Success Bartaula',
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
                                    "Email: Successbartaula0@gmail.com",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Address: Ravibhawan, Kathmandu",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Phone: 9742454653",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
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
                                            style:
                                                TextStyle(color: Colors.black),
                                          )),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      TextButton.icon(
                                          onPressed: () {
                                            setState(() {
                                              _launchDialer('9742454653');
                                            });
                                          },
                                          icon: Icon(
                                            Icons.phone,
                                            color: Colors.grey[500],
                                          ),
                                          label: Text(
                                            "CALL",
                                            style:
                                                TextStyle(color: Colors.black),
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
                              Icons.boy,
                              color: Colors.white,
                              size: 90,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Success Bartaula",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Ravibhawan, Kathmandu",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "9742454653",
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
                                  'Abhishek Pandey',
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
                                  "Email: AbhiPandey9@gmail.com",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Address: Sinamangal, Kathmandu",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Phone: 9866238248",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
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
                                        onPressed: () {
                                          setState(() {
                                            _launchDialer('9866238248');
                                          });
                                        },
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
                            Icons.boy,
                            color: Colors.white,
                            size: 90,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Abhishek Pandey",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Sinamangal, Kathmandu",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "9866238248",
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
                                  'Bishal Aryal',
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
                                  "Email: Bishaaryal5@gmail.com",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Address: KhasiBazar, Kathmandu",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Phone: 9808724618",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
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
                                        onPressed: () {
                                          setState(() {
                                            _launchDialer('9808724618');
                                          });
                                        },
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
                            Icons.boy,
                            color: Colors.white,
                            size: 90,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bishal Aryal",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Khasibazar, Kathmandu",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "9808724618",
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
                                  'Prakash Chand',
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
                                  "Email: Prakashchand34@gmail.com",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Address: Sankhamul, Kathmandu",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Phone: 9823796737",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
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
                                        onPressed: () {
                                          setState(() {
                                            _launchDialer('9823796737');
                                          });
                                        },
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
                            Icons.boy,
                            color: Colors.white,
                            size: 90,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Prakash Chand",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Sankhamul, Kathmandu",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "9823796737",
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
                                  'Firdosh Ansari',
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
                                  "Email:AnsariFirdosh87@gmail.com",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Address: Airport Side, Kathmandu",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Phone: 9811348854",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
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
                                        onPressed: () {
                                          setState(() {
                                            _launchDialer('9811348854');
                                          });
                                        },
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
                            Icons.boy,
                            color: Colors.white,
                            size: 90,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Firdosh Ansari",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Airport Side, Kathmandu",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "9811348854",
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
                                  'Jayram sah',
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
                                  "Email: Jayramsah7@gmail.com",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Address: Balkumari, Kathmandu",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Phone: 9825899326",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
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
                                        onPressed: () {
                                          setState(() {
                                            _launchDialer('9825899326');
                                          });
                                        },
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
                            Icons.boy,
                            color: Colors.white,
                            size: 90,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jayram Sah",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Balkumari, Kathmandu",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "9825899326",
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
                                  'Aanand Shrestha',
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
                                  "Email: Aanandstha90@gmail.com",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Address: Koteshwor, Kathmandu",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Phone: 9813842884",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
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
                                        onPressed: () {
                                          setState(() {
                                            _launchDialer('9813842884');
                                          });
                                        },
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
                            Icons.boy,
                            color: Colors.white,
                            size: 90,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Annand Shrestha",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Koteshwor, Kathmandu",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "9813842884",
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
            ],
          ),
        ),
      ),
    );
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
