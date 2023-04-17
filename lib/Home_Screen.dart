import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:form_app/Ambulance.dart';
import 'package:form_app/BloodBank.dart';
import 'package:form_app/Donors.dart';
import 'package:form_app/Reciver.dart';

import 'Hospital.dart';
import 'MyProfile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Text('Blood Donation'),
          backgroundColor: Colors.red,
          actions: [
            IconButton(
              onPressed: () {
                //print("dgwichi");
              },
              icon: Icon(Icons.notifications),
            ),
          ]),
      body: Form(
        child: Column(
          children: [
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
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
              ),
              validator: (val) => val!.isEmpty ? 'Enter Email' : null,
            ),
            SizedBox(
              height: 15,
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        image: const DecorationImage(
                          image: AssetImage('images/Donors.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        image: const DecorationImage(
                          image: AssetImage('images/Ambulance.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        image: const DecorationImage(
                          image: AssetImage('images/Map.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 130.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 1,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Hospital()));
                  },
                  child: Card(
                    elevation: 10,
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Icon(
                          Fontisto.hospital,
                          size: 18,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Hospital',
                          style: TextStyle(color: Colors.black),
                        ),
                      ]),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  margin: const EdgeInsets.all(8.0),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Icon(MaterialCommunityIcons.hospital_box),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BloodBank()));
                        },
                        child: Text(
                          'Blood Bank',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Donors()));
                  },
                  child: Card(
                    elevation: 10,
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Icon(
                          Icons.boy,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Donor',
                          style: TextStyle(color: Colors.black),
                        ),
                      ]),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Reciver()));
                  },
                  child: Card(
                    elevation: 10,
                    margin: const EdgeInsets.all(8.0),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Icon(
                          Icons.man_2,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Reciver',
                          style: TextStyle(color: Colors.black),
                        ),
                      ]),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Ambulance()));
                  },
                  child: Card(
                    elevation: 10,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(children: [
                        Icon(
                          Fontisto.ambulance,
                          size: 17,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Ambulance',
                          style: TextStyle(color: Colors.black),
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/logo.png"),
                    radius: 30,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Success Bartaula",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline)),
                  SizedBox(
                    height: 15,
                  ),
                  Text("9813842884",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.man),
              title: const Text('My Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyProfile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: const Text('map'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: const Text('Edit Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.emergency),
              title: const Text('Emergency Number'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_emergency),
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
