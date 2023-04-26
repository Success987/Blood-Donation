import 'package:flutter/material.dart';

class About_us extends StatefulWidget {
  const About_us({Key? key}) : super(key: key);

  @override
  State<About_us> createState() => _About_usState();
}

class _About_usState extends State<About_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        backgroundColor: Colors.red[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "About Nepali Blood Donors",
              style: TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.grey[700]),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Welcome to the Blood Donors, the ultimate mobile application for healthcare and blood donation in Nepal. Our Mission is to provide a platform for individuals to connect with each other, making healthcare and blood donation easier and accessible for all. With our app, you can:",
            ),
            SizedBox(
              height: 15,
            ),
            Text(
                "Search as a donor: Need blood? No worries, search for potential donors in your area through our app."),
            SizedBox(
              height: 15,
            ),
            Text(
                "Register as a donor: Share your Willingness to help others in need by registering as a donor in our app."),
            SizedBox(
              height: 15,
            ),
            Text(
                "Find blood banks: Get access to the latest information about blood banks across Nepal, including their locations and contact details."),
            SizedBox(
              height: 15,
            ),
            Text(
                "Find and register ambulance services: Find ambulance services in your area or register your own ambulance to be listed in our app."),
            SizedBox(
              height: 15,
            ),
            Text(
                "Donor card: Get a digital donor card to keep track of your blood donation history."),
            SizedBox(
              height: 15,
            ),
            Text(
                "With many exciting features, our app is the ultimate solution for all your healthcare and blood donation needs in Nepal. Download it now and be a part of the positive change!"),
            SizedBox(
              height: 25,
            ),
            Text("Share Little, Care More."),
            SizedBox(
              height: 5,
            ),
            Text("Nepali Blood Donors."),
            SizedBox(
              height: 5,
            ),
            Text("Version: 3.1.4"),
            SizedBox(
              height: 5,
            ),
            Text("For More: www.nepaliblooddonors.com"),
          ],
        ),
      ),
    );
  }
}
