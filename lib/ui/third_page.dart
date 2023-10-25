import 'package:flutter/material.dart';
import 'package:new_project/ui/home_page.dart';

import 'TailoringShops_page.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

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
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(248, 165, 118, 118),
              ),
              child: Text(
                'Tailoring System App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              // Drawer 1
              title: Text('Home'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              // Drawer 2
              title: Text('Tailoring Shops'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TailoringShopsPage(),
                  ),
                );
              },
            ),
            ListTile(
              // Drawer 2
              title: Text('Your Orders'),
              onTap: () {},
            ),
          ],
        ),
      ),
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
                  height: 600,
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
                        top: 32, // Adjust the top position as needed
                        left: 170, // Adjust the left position as needed
                        child: Text(
                          "Address: J5FM+RQ4, Santa Cruz",
                          style: TextStyle(
                            color: Colors.white, // Set text color
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 45, // Adjust the top position as needed
                        left: 170, // Adjust the left position as needed
                        child: Text(
                          "P. Burgos St, Naga, 4400",
                          style: TextStyle(
                            color: Colors.white, // Set text color
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 57, // Adjust the top position as needed
                        left: 170, // Adjust the left position as needed
                        child: Text(
                          "Camarines Sur",
                          style: TextStyle(
                            color: Colors.white, // Set text color
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 85, // Adjust the top position as needed
                        left: 170, // Adjust the left position as needed
                        child: Text(
                          "Phone: (054) 811 2188",
                          style: TextStyle(
                            color: Colors.white, // Set text color
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 140, // Adjust the top position as needed
                        left: 15, // Adjust the left position as needed
                        child: Text(
                          "Customer Information",
                          style: TextStyle(
                            color: const Color.fromARGB(
                                255, 255, 122, 122), // Set text color
                            fontSize: 25,
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
