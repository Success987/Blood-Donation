import 'package:flutter/material.dart';
import 'package:form_app/Login_Screen.dart';

class NewId extends StatefulWidget {
  const NewId({Key? key}) : super(key: key);

  @override
  State<NewId> createState() => _NewIdState();
}

class _NewIdState extends State<NewId> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  String FullName = "";
  String PhoneName = "";
  String Email = "";
  String Gender = "";
  String password = "";

  void initState() {
    super.initState();
    valueChoose2 = listItem2[0];
  }

  late String valueChoose2;

  List listItem2 = [
    'Select Gender',
    'Male',
    'Female',
    'Other',
  ];

  bool _ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text(
          "New Account Login",
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
                              builder: (context) => const LoginScreen()));
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
                                builder: (context) => const LoginScreen()));
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

String Gender = '';
