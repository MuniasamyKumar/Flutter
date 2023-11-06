import 'package:flutter/material.dart';
import 'package:myapp/Widgets/customtextform.dart';

import 'registration_2.dart';

class Registration1 extends StatefulWidget {
  const Registration1({super.key});

  @override
  State<Registration1> createState() => _Registration1State();
}

class _Registration1State extends State<Registration1> {
  final _formKey = GlobalKey<FormState>();
  String first_name = '';
  String last_name = '';
  String DOB = '';
  String blood_group = '';
  String phone_number = '';
  String email = '';
  String r_address = '';
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
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 160, top: 20),
                  child: Text('Personal Details',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 230, bottom: 5),
                  child: Text(
                    "Step 1 of 2",
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
                      value: 0.5,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.person,
                      size: 70,
                      color: Colors.white,
                    ),
                    minRadius: 65,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Customtextformfield(
                    labelText: 'First Name*',
                    hintText: 'First Name',
                  ),
                ),
                
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Customtextformfield(
                    labelText: 'Last Name',
                    hintText: 'Last Name',
                    
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
                        child: Customtextformfield(labelText: 'Date of Birth*'),
                      ),
                      SizedBox(
                        // height: 100,
                        width: 165,
                        child: Customtextformfield(labelText: 'Blood Group*'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        // height: 100,
                        width: 60,
                        child: Customtextformfield(labelText: '+91'),
                      ),
                      SizedBox(
                        // height: 100,
                        width: 270,
                        child: Customtextformfield(labelText: 'Phone Number*'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Customtextformfield(
                    labelText: 'Email*',
                    hintText: 'Email',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Customtextformfield(
                    labelText: 'Residential Address',
                    hintText: 'Residential Address',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Registration2()));
                      },
                      child: Text('Next Page', style: TextStyle(fontSize: 20)),
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(340, 45)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
