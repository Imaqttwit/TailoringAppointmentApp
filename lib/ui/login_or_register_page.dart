/* Authored by: Jogen John Daniel B. Alanis. Jr.
Company: New Jeans
Project: Tailoring Appointment Application
Feature: [FEATURECODE-001] Home Page
Description: Landing page
 */
import 'package:flutter/material.dart';
import 'package:new_project/ui/Customer_register_page.dart';
import 'package:new_project/ui/Login_page.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _CustomerRegisterPage();
}

class _CustomerRegisterPage extends State<LoginOrRegisterPage> {
  //initially show login page
  bool showLoginPage = true;

  //toggle between login and register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        onTap: togglePages,
      );
    } else {
      return CustomerRegisterPage(
        onTap: togglePages,
      );
    }
  }
}
