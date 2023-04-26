import 'package:flutter/material.dart';
import 'package:form_app/Ambulance.dart';
import 'package:form_app/Home_Screen.dart';

class Ambulance_Register extends StatefulWidget {
  const Ambulance_Register({Key? key}) : super(key: key);

  @override
  State<Ambulance_Register> createState() => _Ambulance_RegisterState();
}

class _Ambulance_RegisterState extends State<Ambulance_Register> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  String FullName = "";
  String PhoneName = "";

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
    'Select Local Level',
    'Gajuri',
    'Kalanki',
    'Bidur',
    "Sitanagar",
    "Old Baneshwor",
    'swyambu',
    'Tokha',
    "Kalimati",
    "Teku",
    "Thapathali",
    "Lagankhel",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ambulance Registration"),
        backgroundColor: Colors.red[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Ambulance",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              "Registration",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Register Now",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20,
            ),
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
                hintText: "Ambulance Service Name",
              ),
              validator: (val) => val!.isEmpty ? "Full Name" : null,
              onChanged: (val) {
                setState(() {
                  FullName = val;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
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
                hintText: "phone Number",
              ),
              validator: (val) => val!.isEmpty ? "Phone Name" : null,
              onChanged: (val) {
                setState(() {
                  PhoneName = val;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
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
                hintText: "Ambulance Number Plate",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.maxFinite,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color(0XFFD1D5D8), width: 2.0),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  alignment: Alignment.center,
                  dropdownColor: Colors.white,
                  icon: const Icon(
                    Icons.location_pin,
                    size: 20,
                  ),
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
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.maxFinite,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color(0XFFD1D5D8), width: 2.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    dropdownColor: Colors.white,
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 30.0,
                    value: valueChoose1,
                    onChanged: (newValue1) {
                      setState(() {
                        valueChoose1 = newValue1 as String;
                        locallevelSelect = valueChoose1;
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
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Ambulance()));
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.flag,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.green),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Success',
                          ),
                        ],
                      ),
                      actions: <Widget>[
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red[500],
                ),
                width: double.maxFinite,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String districtSelect = '';
String locallevelSelect = '';
