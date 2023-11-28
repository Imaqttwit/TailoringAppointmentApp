import 'package:flutter/material.dart';
import 'package:new_project/ui/Notification.dart';

import 'package:new_project/ui/home_page.dart';
import 'TailoringShops_page.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
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
      endDrawer: Drawer(
        child: Container(
          color:
              Color.fromARGB(255, 48, 34, 34), // Change to your desired color
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(248, 165, 118, 118),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.0), // Adjust the top padding here
                        child: Text(
                          'Tailoring System App',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(
                          Icons
                              .notifications, // Replace this with your notification icon
                          color: Colors.white,
                          size: 30, // Adjust the size of the icon here
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NotificationPage(),
                            ),
                          ); // Add functionality for notification icon press
                        },
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: const Color.fromARGB(
                        255, 255, 255, 255), // Change text color here),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Tailoring Shops',
                  style: TextStyle(
                    color: const Color.fromARGB(
                        255, 255, 255, 255), // Change text color here),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TailoringShopsPage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Your Orders',
                  style: TextStyle(
                    color: const Color.fromARGB(
                        255, 255, 255, 255), // Change text color here),
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
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
                  left: 50.0, top: 01.0, right: 50.0, bottom: 20.0),
              child: Text(
                "Sign Up form for Appointment",
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
                  width: 370,
                  height: 550,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          width: 150,
                          height: 90,
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
                        top: 10,
                        left: 170,
                        child: Text(
                          'Marantz',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 32,
                        left: 170,
                        child: Text(
                          "Address: J5FM+RQ4, Santa Cruz",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 45,
                        left: 170,
                        child: Text(
                          "P. Burgos St, Naga, 4400",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 57,
                        left: 170,
                        child: Text(
                          "Camarines Sur",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 85,
                        left: 170,
                        child: Text(
                          "Phone: (054) 811 2188",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 130,
                        left: 15,
                        child: Text(
                          "Customer Information",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 122, 122),
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 180,
                        left: 15,
                        child: Container(
                          width: 340,
                          height: 40,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Full Name',
                              labelStyle: TextStyle(color: Colors.white),
                              filled: true, // Add a background color
                              fillColor: Color.fromARGB(255, 187, 113,
                                  113), // Set the background color
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 187, 113, 113)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 187, 113, 113)),
                              ),
                            ),
                            // Handle form input logic here
                          ),
                        ),
                      ),
                      Positioned(
                        top: 240,
                        left: 15,
                        child: Container(
                          width: 340,
                          height: 40,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(color: Colors.white),
                              filled: true, // Add a background color
                              fillColor: Color.fromARGB(255, 187, 113,
                                  113), // Set the background color
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 187, 113, 113)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 187, 113, 113)),
                              ),
                            ),
                            // Handle form input logic here
                          ),
                        ),
                      ),
                      Positioned(
                        top: 300,
                        left: 15,
                        child: Container(
                          width: 340,
                          height: 40,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Address',
                              labelStyle: TextStyle(color: Colors.white),
                              filled: true, // Add a background color
                              fillColor: Color.fromARGB(255, 187, 113,
                                  113), // Set the background color
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 187, 113, 113)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 187, 113, 113)),
                              ),
                            ),
                            // Handle form input logic here
                          ),
                        ),
                      ),
                      Positioned(
                        top: 360,
                        left: 15,
                        child: Container(
                          width: 340,
                          height: 40,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                              labelStyle: TextStyle(color: Colors.white),
                              filled: true, // Add a background color
                              fillColor: Color.fromARGB(255, 187, 113,
                                  113), // Set the background color
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 187, 113, 113)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 187, 113, 113)),
                              ),
                            ),
                            // Handle form input logic here
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Confirm',
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
