import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onboarding_screens_15/onboarding_screen_2B.dart';

class Onboarding2A extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isPasswordVisible = false;

    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('images/P2bkgd.jpeg'),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 70.0, horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.deepOrange, Colors.orange],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Icon(
                  Icons.ac_unit,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Hey, Welcome Back!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    // border: OutlineInputBorder(),
                    labelText: 'Ibukun.baafog@meltwater.org',
                    filled: true,
                    fillColor: Colors.grey[300], // Light grey background color
                    prefixIcon: Icon(
                      Icons.mail,
                    ),
                    contentPadding:
                        EdgeInsetsDirectional.symmetric(vertical: 30)),
                readOnly: true,
              ),
            ),
            SizedBox(height: 5),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors
                                        .white, // Set your desired border color here
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.grey[300],
                                labelText: '************',
                                prefixIcon: Icon(
                                  Icons.lock,
                                ),
                                suffixIcon: InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ),
                                contentPadding: EdgeInsetsDirectional.symmetric(
                                    vertical: 30)),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 30),
                            Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              width: 400,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Row(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(width: 16),
                          Text("Logging in..."),
                        ],
                      ),
                    ),
                  );
                },
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    height: 3,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.grey[200],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Or Log In Using Email',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    height: 3,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.grey[200],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Set the background color to white
                      shadowColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10), // Adjust the border radius as needed
                      ),
                      minimumSize:
                          Size(180, 60), // Set the width and height as needed
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.facebook_sharp,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text('Facebook',
                            style: TextStyle(
                                color: Colors
                                    .white)), // Set the text color to black
                      ],
                    ),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black),
                      shadowColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10), // Adjust the border radius as needed
                      ),
                      minimumSize:
                          Size(180, 60), // Set the width and height as needed
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.google),
                        SizedBox(width: 8),
                        Text('Google',
                            style: TextStyle(
                                color: Colors
                                    .black)), // Set the text color to black
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 60),
                  Text(
                    'New to cDrive?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Onboarding2B()),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
