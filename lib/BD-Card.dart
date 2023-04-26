import 'package:flutter/material.dart';

class BD_Card extends StatefulWidget {
  const BD_Card({Key? key}) : super(key: key);

  @override
  State<BD_Card> createState() => _BD_CardState();
}

class _BD_CardState extends State<BD_Card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text("Blood Donors"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              "Namaste,",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(width: double.maxFinite),
            Text(
              "Success Bartaula",
              style: TextStyle(
                  color: Colors.red[700],
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "You can request your BD card from here. By clicking Get My Card, you will redirect to your member card.",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "images/bd.jpg",
              width: 160,
              height: 250,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                //print("hksdh");
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const Add_Req()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.red[500],
                ),
                width: double.maxFinite,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Get My Card',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
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
