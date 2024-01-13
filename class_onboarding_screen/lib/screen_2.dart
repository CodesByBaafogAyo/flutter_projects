import 'package:class_onboarding_screen/my_home_page.dart';
import 'package:class_onboarding_screen/screen_3.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screen_2 extends StatefulWidget {
  const Screen_2({Key? key}) : super(key: key);

  @override
  State<Screen_2> createState() => _Screen_2State();
}

class _Screen_2State extends State<Screen_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Login Here',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 200,
              child: Text(
                'Welcome back. You\'ve been missed!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              width: 400.0,
              height: 100.0,
              child: Card(
                color: Colors.pinkAccent[0],
                margin: EdgeInsetsDirectional.symmetric(
                  vertical: 20.0,
                  horizontal: 20.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: FractionallySizedBox(
                      widthFactor:
                          0.8, // Adjust the value to control the text width
                      child: Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 400.0,
              height: 100.0,
              child: Card(
                color: Colors.pinkAccent[0],
                margin: EdgeInsetsDirectional.symmetric(
                  vertical: 20.0,
                  horizontal: 20.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: FractionallySizedBox(
                      widthFactor:
                          0.8, // Adjust the value to control the text width
                      child: Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 400,
              margin: EdgeInsetsDirectional.only(end: 40),
              child: Text(
                'Forgot your password?',
                style: TextStyle(fontSize: 12.0),
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              width: 400.0,
              height: 100.0,
              child: Card(
                color: Colors.deepOrange,
                margin: EdgeInsetsDirectional.symmetric(
                  vertical: 20.0,
                  horizontal: 20.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: FractionallySizedBox(
                      widthFactor:
                          0.8, // Adjust the value to control the text width
                      child: Center(
                        child: Text(
                          'Sign in',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen_3()),
                );
              },
              child: Text(
                'Create a new account here',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            Text(
              'Or continue with',
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.grey[300],
                  child: IconButton(
                    onPressed: () {
                      // Add your logic here
                    },
                    icon: FaIcon(FontAwesomeIcons.google),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  color: Colors.grey[300],
                  child: IconButton(
                    onPressed: () {
                      // Add your logic here
                    },
                    icon: FaIcon(FontAwesomeIcons.facebook),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  color: Colors.grey[300],
                  child: IconButton(
                    onPressed: () {
                      // Add your logic here
                    },
                    icon: FaIcon(FontAwesomeIcons.apple),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Text(
                'Restart App',
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
            )
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   child: Text('Go to Home'),
            // ),
          ],
        ),
      ),
    );
  }
}
