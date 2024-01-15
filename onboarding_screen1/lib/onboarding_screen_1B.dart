import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onboarding_screens_15/onboarding_screen_1C.dart';

class Onboarding1B extends StatefulWidget {
  const Onboarding1B({Key? key}) : super(key: key);

  @override
  State<Onboarding1B> createState() => _Onboarding1BState();
}

class _Onboarding1BState extends State<Onboarding1B> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bottomimage.png'),
              fit: BoxFit.fitWidth,
              alignment: AlignmentDirectional.bottomStart),
        ),
        padding: EdgeInsets.symmetric(vertical: 70.0, horizontal: 30.0),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage('images/Vector.png'),
                  width: 50, // Adjust the width as needed
                  height: 50, // Adjust the height as needed
                  fit: BoxFit.contain, // Adjust the fit property as needed
                ),
                Text(
                  'Log In To Brand',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.black87),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:
                          Colors.white, // Set the background color to white
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
                        Icon(Icons.facebook),
                        SizedBox(width: 8),
                        Text('Facebook',
                            style: TextStyle(
                                color: Colors
                                    .black)), // Set the text color to black
                      ],
                    ),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:
                          Colors.white, // Set the background color to white
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
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'EMAIL',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[400],
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 60,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Ibukun.baafog@meltwater.org',
                      ),
                      readOnly: true,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PASSWORD',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[400],
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          child: TextField(
                            obscureText: !isPasswordVisible,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '************',
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                                child: Icon(
                                  isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
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
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              width: 400,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  // Perform login action and show loading indicator
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
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              child: Row(
                children: [
                  SizedBox(width: 60),
                  Text(
                    'New to Brand?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Onboarding1C()),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                      ),
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
