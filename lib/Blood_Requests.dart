import 'package:flutter/material.dart';
import 'package:form_app/Add_Req.dart';
import 'package:form_app/My_Req.dart';
import 'package:url_launcher/url_launcher.dart';

class BloodRequest extends StatefulWidget {
  const BloodRequest({Key? key}) : super(key: key);

  @override
  State<BloodRequest> createState() => _BloodRequestState();
}

class _BloodRequestState extends State<BloodRequest> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nepali Blood Donors',
        ),
        backgroundColor: Colors.red[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Required Blood: A+",
                            style: TextStyle(
                                color: Colors.red[900],
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.location_pin,
                                color: Colors.black,
                              ),
                              label: Text(
                                'Jhapa',
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        height: 10,
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          Text(
                            'Patient:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Abhishek Pandey',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Required:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Text(
                              '2 pint required on 2080-4-20 at 10:05 AM on HAMS Hospital',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Case:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Blood doun by diases',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Contact:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Success Bartaula',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Phone:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '9742454653',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.grey[200],
                        child: Row(
                          children: [
                            TextButton.icon(
                                onPressed: () {
                                  setState(() {
                                    _launchDialer('9742454653');
                                  });
                                },
                                icon: Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'Call',
                                  style: TextStyle(color: Colors.green[500]),
                                )),
                            TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.share,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'Share',
                                  style: TextStyle(color: Colors.green[500]),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Required Blood: O+",
                            style: TextStyle(
                                color: Colors.red[900],
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.location_pin,
                                color: Colors.black,
                              ),
                              label: Text(
                                'Kathmandu',
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        height: 10,
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          Text(
                            'Patient:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Prakash Chand',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Required:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Text(
                              '2 pint required on 2080-3-10 at 8:05 AM on Green City Hospital',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Case:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Emergency blood required',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Contact:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Firdosh Ansari',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Phone:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '9811348854',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.grey[200],
                        child: Row(
                          children: [
                            TextButton.icon(
                                onPressed: () {
                                  setState(() {
                                    _launchDialer('9811348854');
                                  });
                                },
                                icon: Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'Call',
                                  style: TextStyle(color: Colors.green[500]),
                                )),
                            TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.share,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'Share',
                                  style: TextStyle(color: Colors.green[500]),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Required Blood: B+",
                            style: TextStyle(
                                color: Colors.red[900],
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.location_pin,
                                color: Colors.black,
                              ),
                              label: Text(
                                'Dhading',
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        height: 10,
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          Text(
                            'Patient:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Bishal Aryal',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Required:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Text(
                              '1 pint required on 2080-02-15 at 9:05 AM on Bir Hospital',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Case:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Patient is suffering from blood cancer',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Contact:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Jayram Sah',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Phone:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '9825899326',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.grey[200],
                        child: Row(
                          children: [
                            TextButton.icon(
                                onPressed: () {
                                  setState(() {
                                    _launchDialer('9825899326');
                                  });
                                },
                                icon: Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'Call',
                                  style: TextStyle(color: Colors.green[500]),
                                )),
                            TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.share,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'Share',
                                  style: TextStyle(color: Colors.green[500]),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Required Blood: AB+",
                            style: TextStyle(
                                color: Colors.red[900],
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.location_pin,
                                color: Colors.black,
                              ),
                              label: Text(
                                'Nuwakot',
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        height: 10,
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          Text(
                            'Patient:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Madhu Sah',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Required:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Text(
                              '1 pint required on 2080-05-06 at 11:15 AM on Medicity Hospital',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Case:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Operation',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Contact:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Lisa Shakya',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Phone:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '9813842884',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.grey[200],
                        child: Row(
                          children: [
                            TextButton.icon(
                                onPressed: () {
                                  setState(() {
                                    _launchDialer('9813842884');
                                  });
                                },
                                icon: Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'Call',
                                  style: TextStyle(color: Colors.green[500]),
                                )),
                            TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.share,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'Share',
                                  style: TextStyle(color: Colors.green[500]),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Required Blood: A-",
                            style: TextStyle(
                                color: Colors.red[900],
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.location_pin,
                                color: Colors.black,
                              ),
                              label: Text(
                                'Lumbini',
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        height: 10,
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          Text(
                            'Patient:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Krishna Khadka',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Required:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Text(
                              '1 pint required on 2080-1-25 at 1:10 PM on ManMohan Hospital',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Case:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Accident',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Contact:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Prajwol Kharel',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Phone:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '9862921140',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.grey[200],
                        child: Row(
                          children: [
                            TextButton.icon(
                                onPressed: () {
                                  setState(() {
                                    _launchDialer('9862921140');
                                  });
                                },
                                icon: Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'Call',
                                  style: TextStyle(color: Colors.green[500]),
                                )),
                            TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.share,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'Share',
                                  style: TextStyle(color: Colors.green[500]),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Stack(
                children: [
                  Positioned(
                    bottom: 110,
                    left: 60,
                    child: AlertDialog(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      actions: [
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const My_Req()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.grey[300],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('View My Request'),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.green,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Icon(
                                        Icons.timeline,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
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
                                        builder: (context) => const Add_Req()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.grey[300],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Add Request'),
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.green,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Icon(
                                        Icons.note_add,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        backgroundColor: Colors.red[900],
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
