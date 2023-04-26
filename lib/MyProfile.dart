import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:form_app/About_us.dart';
import 'package:form_app/Account_Setting.dart';
import 'package:form_app/Login_Screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      // final imageTemporary = File(image.path);
      //setState(() => this.image = imageTemporary);
      final imagePermanent = await saveImagePermanently(image.path);
      setState(() => this.image = imagePermanent);
    } on PlatformException catch (e) {
      debugPrint('Failed to pick image: $e');
    }
  }

  Future<File> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

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
                image != null
                    ? GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  child: SizedBox(
                                    height: 80,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                              pickImage(ImageSource.gallery);
                                            },
                                            child: Card(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(FontAwesome.photo),
                                                  SizedBox(
                                                    width: 20.0,
                                                  ),
                                                  Text(
                                                    'Gallery',
                                                    style: TextStyle(
                                                      fontSize: 20.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                              pickImage(ImageSource.camera);
                                            },
                                            child: Card(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(Entypo.camera),
                                                  SizedBox(
                                                    width: 20.0,
                                                  ),
                                                  Text(
                                                    'Camera',
                                                    style: TextStyle(
                                                      fontSize: 20.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: ClipOval(
                          child: Image.file(
                            image!,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  child: SizedBox(
                                    height: 80,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                              pickImage(ImageSource.gallery);
                                            },
                                            child: Card(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(FontAwesome.photo),
                                                  SizedBox(
                                                    width: 20.0,
                                                  ),
                                                  Text(
                                                    'Gallery',
                                                    style: TextStyle(
                                                      fontSize: 20.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                              pickImage(ImageSource.camera);
                                            },
                                            child: Card(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(Entypo.camera),
                                                  SizedBox(
                                                    width: 20.0,
                                                  ),
                                                  Text(
                                                    'Camera',
                                                    style: TextStyle(
                                                      fontSize: 20.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Image.asset(
                          'images/profilephoto.png',
                          height: 80,
                          width: 80,
                        ),
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Account_Setting()));
                    },
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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => About_us()));
                    },
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
