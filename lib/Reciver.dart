import 'package:flutter/material.dart';
import 'package:form_app/Available_Donors.dart';

class Reciver extends StatefulWidget {
  const Reciver({Key? key}) : super(key: key);

  @override
  State<Reciver> createState() => _ReciverState();
}

class _ReciverState extends State<Reciver> {
  @override
  void initState() {
    super.initState();
    valueChoose = listItem[0];
    valueChoose1 = listItem1[0];
  }

  late String valueChoose;
  late String valueChoose1;

  List listItem = [
    'Select District',
    'Kathmandu',
    'Lalitpur',
    'Kritipur',
    'Dhading',
    'Nuwakot',
    'Bhaktapur',
    'Dharan',
    'Jhapa',
    'Illam',
    'Dhankuta',
    'Janakpur',
    'Biratnagar',
    'Birgunj',
    'Mahendranagar',
    'Dolpa',
    'Chitwan',
  ];
  List listItem1 = [
    'Select Blood Group',
    'A+',
    'A-',
    'B+',
    "B-",
    "O+",
    'O-',
    'AB+',
    "A-",
  ];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blood Donars"),
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.red[900],
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(75),
                    bottomLeft: Radius.circular(75))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "BD-Finder",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select District",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        alignment: Alignment.center,
                        dropdownColor: Colors.white,
                        icon: const Icon(Icons.location_pin),
                        iconSize: 30.0,
                        value: valueChoose,
                        onChanged: (newValue) {
                          setState(() {
                            valueChoose = newValue as String;
                            districtSelect = valueChoose;
                          });
                        },
                        items: listItem.map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(
                              valueItem,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  Text(
                    "Select Blood Group",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          alignment: Alignment.center,
                          dropdownColor: Colors.white,
                          icon: const Icon(Icons.arrow_drop_down),
                          iconSize: 30.0,
                          value: valueChoose1,
                          onChanged: (newValue1) {
                            setState(() {
                              valueChoose1 = newValue1 as String;
                              bloodGroup = valueChoose1;
                            });
                          },
                          items: listItem1.map((valueItem1) {
                            return DropdownMenuItem(
                              value: valueItem1,
                              child: Text(
                                valueItem1,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Select Blood Group",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      //print('asdasd');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AvailableDonors()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[500],
                      ),
                      width: double.maxFinite,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Find',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String bloodGroup = '';
String districtSelect = '';
