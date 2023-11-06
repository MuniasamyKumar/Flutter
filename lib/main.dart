import 'package:flutter/material.dart';
import 'package:myapp/reg_success.dart';
import 'package:myapp/registration_1.dart';
import 'package:myapp/registration_2.dart';

import 'home.dart';
import 'homescreen.dart';
import 'loginotp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
