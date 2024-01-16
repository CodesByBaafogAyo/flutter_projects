import 'package:flutter/material.dart';

class Home_screen3 extends StatefulWidget {
  const Home_screen3({super.key});

  @override
  State<Home_screen3> createState() => _Home_screen3State();
}

class _Home_screen3State extends State<Home_screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Home',
                  style: TextStyle(fontSize: 30),
                ),
                Icon(Icons.notifications),
                Icon(Icons.menu)
              ],
            ),
            Row(),
            Container()
          ],
        ),
      ),
    );
  }
}
