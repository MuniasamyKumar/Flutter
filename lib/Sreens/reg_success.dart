import 'package:flutter/material.dart';

import 'homescreen.dart';

class RegSuccessfulPage extends StatefulWidget {
  const RegSuccessfulPage({super.key});

  @override
  State<RegSuccessfulPage> createState() => _RegSuccessfulPageState();
}

class _RegSuccessfulPageState extends State<RegSuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Row(
                children: [
                  Text(
                    'Registration',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'success!',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Text(
                'You have been successfully registered in \n                MyMedic successfully',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            Center(
              child: Text(
                'Your unique hospital ID :#001',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                ),
              ),
            ),
            Center(child: Image.asset('assets/Frame 1000002614.png')),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text('Continue to homepage',
                    style: TextStyle(fontSize: 20)),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(340, 45)),
                ),
              ),
            ),
            Image.asset('assets/Person with medical mask-pana 1.png')
          ],
        )),
      ),
    );
  }
}
