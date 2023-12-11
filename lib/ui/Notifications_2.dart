import 'package:flutter/material.dart';
import 'package:new_project/components/my_drawer.dart';
import 'package:new_project/ui/Notification.dart';

import 'package:new_project/ui/home_page.dart';
import 'TailoringShops_page.dart';

class Notification2Page extends StatefulWidget {
  const Notification2Page({Key? key}) : super(key: key);

  @override
  State<Notification2Page> createState() => _Notification2PageState();
}

class _Notification2PageState extends State<Notification2Page> {
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
                "Notifications",
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Marantz',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
                        child: Text(
                          'Good day.\n\nOur available schedules are \nMonday 9am - 10:30 you may\nwalk in our store from that time \nand ask the counter for assistance. \n\nThanks.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
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
