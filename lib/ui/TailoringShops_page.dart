import 'package:flutter/material.dart';
import 'package:new_project/components/my_drawer.dart';
import 'package:new_project/ui/Notification.dart';
import 'package:new_project/ui/SignUp_form.dart';

import 'home_page.dart';

class TailoringShopsPage extends StatefulWidget {
  const TailoringShopsPage({super.key});

  @override
  State<TailoringShopsPage> createState() => _TailoringShopsPageState();
}

class _TailoringShopsPageState extends State<TailoringShopsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("Tailoring Shops"),
        leading: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Image.asset('images/logo1.png'),
        ),
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu_rounded),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          ),
        ],
      ),
      //Drawer
      endDrawer: MyDrawer(),
      // THE BODY
      backgroundColor:
          Colors.transparent, // Set background color to transparent
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg3.png'),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 50.0, top: 1.0, right: 50.0, bottom: 20.0),
              child: Text(
                "Which Tailor are you hoping to Book an Appointment?",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.white.withOpacity(0.1),
                  width: 300,
                  height: 150,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          width: 150,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            image: DecorationImage(
                              image: AssetImage('images/marantz.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10, // Adjust the top position as needed
                        left: 170, // Adjust the left position as needed
                        child: Text(
                          'Marantz',
                          style: TextStyle(
                            color: Colors.white, // Set text color
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 30, // Adjust the top position as needed
                        left: 170, // Adjust the left position as needed
                        child: Text(
                          'Ratings:',
                          style: TextStyle(
                            color: Colors.white, // Set text color
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 170,
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 6),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ThirdPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Book Now!',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.white.withOpacity(0.1),
                  width: 300,
                  height: 150,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          width: 150,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            image: DecorationImage(
                              image: AssetImage('images/dyalibi.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10, // Adjust the top position as needed
                        left: 170, // Adjust the left position as needed
                        child: Text(
                          'Dyalibi',
                          style: TextStyle(
                            color: Colors.white, // Set text color
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 30, // Adjust the top position as needed
                        left: 170, // Adjust the left position as needed
                        child: Text(
                          'Ratings:',
                          style: TextStyle(
                            color: Colors.white, // Set text color
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 170,
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 6),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your button click functionality here
                            },
                            child: Text(
                              'Book Now!',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10.0),
                  color: Colors.white.withOpacity(0.1),
                  width: 300,
                  height: 150,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          width: 150,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            image: DecorationImage(
                              image: AssetImage('images/marantz.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10, // Adjust the top position as needed
                        left: 170, // Adjust the left position as needed
                        child: Text(
                          'Marantz',
                          style: TextStyle(
                            color: Colors.white, // Set text color
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 30, // Adjust the top position as needed
                        left: 170, // Adjust the left position as needed
                        child: Text(
                          'Ratings:',
                          style: TextStyle(
                            color: Colors.white, // Set text color
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 170,
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 6),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your button click functionality here
                            },
                            child: Text(
                              'Book Now!',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
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
    );
  }
}
