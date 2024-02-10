import 'package:flutter/material.dart';
import 'package:first_project/screans/create_profile.dart';
import 'package:first_project/screans/login.dart';
import 'package:first_project/screans/otp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}