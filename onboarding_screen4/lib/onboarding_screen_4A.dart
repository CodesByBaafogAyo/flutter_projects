import 'package:flutter/material.dart';
import 'package:onboarding_screen_3/onboarding_screen_4B.dart';

class Onboarding4A extends StatefulWidget {
  const Onboarding4A({super.key});

  @override
  State<Onboarding4A> createState() => _Onboarding4AState();
}

class _Onboarding4AState extends State<Onboarding4A> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding:
                    EdgeInsets.only(left: 30, top: 80, right: 30, bottom: 0),
                color: Color(0xFFC33C54),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage('images/logo.png'),
                          ),
                          width: 130,
                          height: 130,
                        ),
                        Text(
                          'Onbru',
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Log In',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Onboarding4B()),
                            );
                          },
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(fontSize: 14),
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Ibukun.baafog@meltwater.org',
                          labelStyle: TextStyle(color: Colors.black),
                          suffixIcon: Icon(
                            Icons.check_circle_outline,
                            color: Colors.greenAccent,
                          ), // Light grey background color
                        ),
                        readOnly: true,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(fontSize: 14),
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: '************',
                          labelStyle: TextStyle(color: Colors.black),
                          suffixIcon: InkWell(
                            onTap: () {},
                            child: Container(
                              child: Icon(
                                isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          minimumSize:
                              MaterialStateProperty.all(Size(400.0, 60.0)),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                0.0), // Set border radius to 0
                          )),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Text(
                        'Need Help?',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
