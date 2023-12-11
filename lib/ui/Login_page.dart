/* Authored by: Jogen John Daniel B. Alanis. Jr.
Company: New Jeans
Project: Tailoring Appointment Application
Feature: [FEATURECODE-001] Home Page
Description: Landing page
 */
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_project/components/my_buttone.dart';
import 'package:new_project/components/my_components.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try signing in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      // Wrong Email
      showErrorMessage(e.code);
    }
  }

  //show error Message
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            backgroundColor: const Color.fromARGB(255, 255, 122, 122),
            title: Center(
                child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            )));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg3.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                // Logo
                Image.asset(
                  'images/logo1.png',
                  width: 250,
                  height: 150,
                ),
                Text(
                  'TAILORING APPOINTMENT \nAPP',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        'Sign In',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 122, 122),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Email
                MyTextField(
                  controller: emailController,
                  hintText: 'Email Address',
                  obscureText: false,
                  decoration: InputDecoration(
                      // Define your decoration properties here
                      // Example: border, fillColor, filled, etc.
                      ),
                ),
                SizedBox(height: 20),
                // Password
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                  decoration: InputDecoration(
                      // Define your decoration properties here
                      // Example: border, fillColor, filled, etc.
                      ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                //Confirm Button
                MyButton(
                  text: "Sign In",
                  onTap: signUserIn,
                ),

                SizedBox(height: 100),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Register Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          'Customer',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 122, 122),
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 120),
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Text(
                        'Tailoring Shop',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 122, 122),
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
