/* Authored by: Jogen John Daniel B. Alanis. Jr.
Company: New Jeans
Project: Tailoring Appointment Application
Feature: [FEATURECODE-001] Home Page
Description: Landing page
 */
import 'package:flutter/material.dart';
import 'package:new_project/ui/Notification.dart';
import 'package:new_project/ui/Login_page.dart';
import 'TailoringShops_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("Tailoring System App"),
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
            Text(
              "|   Get the details",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              "regarding your    ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              "customized dress,",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              "uniforms, and      ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              "suits.                    |",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            CustomizedButton(),
          ],
        ),
      ),
    );
  }
}

class CustomizedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Pushing a route directly, WITHOUT using a named route
        Navigator.of(context).push(
          // With MaterialPageRoute, you can pass data between pages,
          // but if you have a more complex app, you will quickly get lost.
          MaterialPageRoute(
            builder: (context) => TailoringShopsPage(),
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(15.0),
        color: Color.fromARGB(255, 165, 167, 86),
        child: Text("BOOK AN APPOINTMENT"),
        width: 225,
      ),
    );
  }
}
