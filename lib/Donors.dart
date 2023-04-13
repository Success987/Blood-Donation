import 'package:flutter/material.dart';
import 'package:form_app/Log_In.dart';

import 'Home_Screen.dart';

class Donors extends StatefulWidget {
  const Donors({Key? key}) : super(key: key);

  @override
  State<Donors> createState() => _DonorsState();
}

class _DonorsState extends State<Donors> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  String FullName = "";
  String PhoneName = "";
  String Email = "";
  String Gender = "";
  String password = "";

  void initState() {
    super.initState();
    valueChoose = listItem[0];
    valueChoose1 = listItem1[0];
    valueChoose2 = listItem2[0];
  }

  late String valueChoose;
  late String valueChoose1;
  late String valueChoose2;

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

  List listItem2 = [
    'Select Gender',
    'Male',
    'Female',
    'Other',
  ];
  bool _ischecked = false;

  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text(
          "Become Donors",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Create Account",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
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
                      borderSide:
                          BorderSide(color: Color(0XFFD1D5D8), width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    hintText: "Full Name",
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
                      borderSide:
                          BorderSide(color: Color(0XFFD1D5D8), width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    hintText: "Phone Number",
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
                        value: valueChoose2,
                        onChanged: (newValue1) {
                          setState(() {
                            valueChoose2 = newValue1 as String;
                            Gender = valueChoose2;
                          });
                        },
                        items: listItem2.map((valueItem2) {
                          return DropdownMenuItem(
                            value: valueItem2,
                            child: Text(
                              valueItem2,
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
                Container(
                  width: double.maxFinite,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color(0XFFD1D5D8), width: 2.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        _selectDate(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _selectedDate == null
                                ? 'Date of Birth'
                                : _selectedDate.toString(),
                          ),
                          Icon(Icons.calendar_month),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
                    hintText: "Email",
                  ),
                  validator: (val) => val!.isEmpty ? "Email" : null,
                  onChanged: (val) {
                    setState(() {
                      Email = val;
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
                      borderSide:
                          BorderSide(color: Color(0XFFD1D5D8), width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    hintText: "Enter Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                  obscureText: _isObscure,
                  validator: (val) => val!.isEmpty ? 'Enter Password' : null,
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.red,
                      checkColor: Colors.white,
                      value: _ischecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _ischecked = newValue ?? false;
                        });
                      },
                    ),
                    Text('I agree to all the terms and conditions.'),
                  ],
                ),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
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
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 40.0, bottom: 20),
                                child: Text('Soon you will get an email.'),
                              ),
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
                    }
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
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('I am already a member.'),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LogIn()));
                      },
                      child: Text('Log In',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String bloodGroup = '';
String districtSelect = '';
String Gender = '';
