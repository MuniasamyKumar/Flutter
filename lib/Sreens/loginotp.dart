import 'package:flutter/material.dart';
import 'package:myapp/login.dart';
import 'package:myapp/registration_1.dart';

import 'Widgets/customtextform.dart';

class LoginOTP extends StatefulWidget {
  const LoginOTP({super.key});

  @override
  State<LoginOTP> createState() => _LoginOTPState();
}

class _LoginOTPState extends State<LoginOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Image.asset('assets/Group 1000002668.png'),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Customtextformfield(
                  hintText: 'Enter OTP*',
                  labelText: 'Enter OTP',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 0,
                  left: 25,
                ),
                child: Row(
                  children: [
                    Text(
                      "Don't receive a code",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text("Resend OTP"))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                ),
                child: Row(
                  children: [
                    Text(
                      "Wrong number?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("Edit entered Phone number"))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Registration1()));
                  },
                  child: Text('Proceed', style: TextStyle(fontSize: 20)),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(340, 45)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
