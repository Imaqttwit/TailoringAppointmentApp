/* Authored by: Jogen John Daniel B. Alanis. Jr.
Company: New Jeans
Project: Tailoring Appointment Application
Feature: [FEATURECODE-001] Home Page
Description: Landing page
 */
import 'package:flutter/material.dart';
import 'package:new_project/components/my_drawer.dart';
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
      //Drawer
      endDrawer: MyDrawer(),
      //THE BODY
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
