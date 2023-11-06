import 'package:flutter/material.dart';
import 'package:myapp/reg_success.dart';

import 'Widgets/customtextform.dart';

class Registration2 extends StatefulWidget {
  const Registration2({super.key});

  @override
  State<Registration2> createState() => _Registration2State();
}

class _Registration2State extends State<Registration2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User Rrgistration',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 160, top: 20),
              child: Text('Additional Details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 230, bottom: 5),
              child: Text(
                "Step 2 of 2",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            Center(
              child: Container(
                width: 330,
                height: 10,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
                child: LinearProgressIndicator(
                  value: 0.0,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  backgroundColor: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    // height: 100,
                    width: 165,
                    child: Customtextformfield(labelText: 'Age*'),
                  ),
                  SizedBox(
                    // height: 100,
                    width: 165,
                    child: Customtextformfield(labelText: 'Gender*'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Customtextformfield(
                labelText: 'Allergies known',
                hintText: 'Allergies known',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Customtextformfield(
                labelText: 'Emergency Contact Name',
                hintText: 'Emergency Contact Name',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Customtextformfield(
                labelText: 'Emergency Contact Number',
                hintText: 'Emergency Contact Number',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Customtextformfield(
                labelText: 'Marital Startus',
                hintText: 'Marital Startus',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    // height: 100,
                    width: 165,
                    child: Customtextformfield(labelText: 'Height (in cm)'),
                  ),
                  SizedBox(
                    // height: 100,
                    width: 165,
                    child: Customtextformfield(labelText: 'Weight (in kg)'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegSuccessfulPage()));
                },
                child: Text('Register Now', style: TextStyle(fontSize: 20)),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(340, 45)),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
