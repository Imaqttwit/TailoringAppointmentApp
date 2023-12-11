/* Authored by: Jogen John Daniel B. Alanis. Jr.
Company: New Jeans
Project: Tailoring Appointment Application
Feature: [FEATURECODE-001] Home Page
Description: Landing page
 */
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_project/ui/Login_page.dart';
import 'package:new_project/ui/home_page.dart';
import 'package:new_project/ui/login_or_register_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            // user is logged in
            if (snapshot.hasData) {
              return HomePage();
            }
            // user is NOT logged in
            else {
              return LoginOrRegisterPage();
            }
          }),
    );
  }
}
