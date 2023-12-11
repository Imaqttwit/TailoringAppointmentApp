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

class CustomerRegisterPage extends StatefulWidget {
  final Function()? onTap;
  CustomerRegisterPage({super.key, required this.onTap});

  @override
  State<CustomerRegisterPage> createState() => _CustomerRegisterPageState();
}

class _CustomerRegisterPageState extends State<CustomerRegisterPage> {
  // text editing controllers
  final displayNameController = TextEditingController();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final confirmPasswordController = TextEditingController();

  // sign user up method
  void signUserUp() async {
    // Show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      if (passwordController.text == confirmPasswordController.text) {
        UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );

        // Get the currently logged-in user
        User? user = userCredential.user;

        // Update user profile with full name
        await user?.updateProfile(displayName: displayNameController.text);
      } else {
        // Show error message, password doesn't match
        showErrorMessage("Password doesn't match");
      }

      // Check if the widget is mounted before popping the dialog
      if (mounted) {
        Navigator.pop(context);
      }
    } on FirebaseAuthException catch (e) {
      // Check if the widget is mounted before showing error message and popping the dialog
      if (mounted) {
        Navigator.pop(context);
        // Wrong Email or other FirebaseAuthException
        showErrorMessage(e.code);
      }
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
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg3.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                // ... Other Widgets
                // Logo and Text
                Padding(
                  padding: EdgeInsets.only(left: 1),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Logo
                      Image.asset(
                        'images/logo1.png',
                        width: 100,
                        height: 75,
                      ),
                      SizedBox(
                          width: 5), // Adjust spacing between logo and text
                      // Text
                      Text(
                        'TAILORING APPOINTMENT \nAPP',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 100,
                  ),
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 10, top: 10), // Adjust padding as needed
                          child: Text(
                            'Sign Up as Customer', // Inserted text
                            style: TextStyle(
                              color: const Color.fromARGB(255, 255, 122, 122),
                              fontSize: 22, // Adjust size as needed
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      MyTextField(
                        controller: displayNameController,
                        hintText: 'Full Name',
                        obscureText: false,
                        decoration: InputDecoration(),
                      ),
                      SizedBox(height: 10),
                      MyTextField(
                        controller: emailController,
                        hintText: 'Email Address',
                        obscureText: false,
                        decoration: InputDecoration(),
                      ),
                      SizedBox(height: 10),
                      MyTextField(
                        controller: passwordController,
                        hintText: 'Password',
                        obscureText: true,
                        decoration: InputDecoration(),
                      ),
                      SizedBox(height: 10),
                      MyTextField(
                        controller: confirmPasswordController,
                        hintText: 'Confirm Password',
                        obscureText: true,
                        decoration: InputDecoration(),
                      ),
                      SizedBox(height: 10),
                      MyButton(
                        text: "Sign Up",
                        onTap: signUserUp,
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
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
                        'Already have an account?',
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
                      padding: const EdgeInsets.all(18),
                      child: GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          'Login as Customer',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 122, 122),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 120),
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: Text(
                        'Login as Tailoring Shop',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 122, 122),
                          fontSize: 18,
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
