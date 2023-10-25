import 'package:flutter/material.dart';
import 'package:new_project/ui/home_page.dart';

void main() {
  runApp(MaterialApp(title: "Tailoring System App", home: HomePage()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 41, 41, 41)),
      home: HomePage(),
    );
  }
}
