import 'package:class_onboarding_screen/screen_2.dart';
import 'package:class_onboarding_screen/screen_3.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 80.0,
            ),
            Expanded(
              flex: 1,
              child: Image(
                image: AssetImage('images/login.png'),
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.symmetric(
                  vertical: 10.0, horizontal: 20.0),
              child: Center(
                child: Text(
                  'Discover Your Dream Job Here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.symmetric(
                  vertical: 10.0, horizontal: 20.0),
              child: Center(
                child: Text(
                  'Explore Opportunities and Discover Your Dream Job Today!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screen_2()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsetsDirectional.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      color: Colors.deepOrange,
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screen_3()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsetsDirectional.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Center(
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80.0,
            ),
          ],
        ),
      ),
    );
  }
}
