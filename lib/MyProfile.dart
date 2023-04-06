import 'package:flutter/material.dart';
import 'package:form_app/Home_Screen.dart';
import 'package:form_app/Login_Screen.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.red[500],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.person),
                    ),
                    Positioned(
                      top: 0,
                      left: 60,
                      child: Icon(
                        Icons.add,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Success Bartaula",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("9841414141",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Kalanki, kathmandu",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[200],
            height: 20,
            thickness: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ACCOUNT",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      color: Colors.grey[500],
                    ),
                    label: Text(
                      'Account Settings',
                      style: TextStyle(color: Colors.black),
                    )),
                Divider(
                  color: Colors.grey[200],
                  height: 10,
                  thickness: 2,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.info_outline,
                      color: Colors.grey[500],
                    ),
                    label: Text('Aboout Us',
                        style: TextStyle(color: Colors.black))),
                Divider(
                  color: Colors.grey[200],
                  height: 10,
                  thickness: 2,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.book_outlined,
                      color: Colors.grey[500],
                    ),
                    label: Text('Terms & Policies',
                        style: TextStyle(color: Colors.black))),
                Divider(
                  color: Colors.grey[200],
                  height: 10,
                  thickness: 2,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.phone,
                      color: Colors.grey[500],
                    ),
                    label: Text('Contact Us',
                        style: TextStyle(color: Colors.black))),
                Divider(
                  color: Colors.grey[200],
                  height: 10,
                  thickness: 2,
                ),
                TextButton.icon(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            'Are you sure want to logout?',
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: Text(
                                'No',
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                },
                                child: Text('Yes'),
                                style: ElevatedButton.styleFrom()),
                          ],
                        );
                      },
                    );
                  },
                  icon: Icon(
                    Icons.logout_sharp,
                    color: Colors.grey[500],
                  ),
                  label: Text(
                    'Logout',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Divider(
                  color: Colors.grey[200],
                  height: 10,
                  thickness: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
