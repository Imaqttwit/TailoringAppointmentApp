import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_project/ui/Notification.dart';
import 'package:new_project/ui/TailoringShops_page.dart';
import 'package:new_project/ui/home_page.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);

  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 48, 34, 34),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(248, 165, 118, 118),
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: Text(
                              'Tailoring System App',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage('images/profileIcon.jpg'),
                              ),
                              const SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    user?.displayName ??
                                        'Full Name not available',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    user.email ??
                                        '', // Replace with user's email if available, otherwise display a message
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NotificationPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: InkWell(
                      onTap: () {
                        signUserOut(); // Implement logout functionality here
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Text(
                          'Logout',
                          style: TextStyle(
                            color: Color.fromARGB(255, 48, 34, 34),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
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
              title: const Text(
                'Tailoring Shops',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
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
              title: const Text(
                'Your Orders',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
