import 'package:flutter/material.dart';

void main() {
  runApp(
    SafeArea(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text('Your Holiday Buddy'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/mine.jpg'),
                ),
                Text(
                  'Ibukun Ayomide-Baafog',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico'),
                ),
                SizedBox(height: 16.0),
                Text(
                  'SENIOR FLUTTER ENGINEER',
                  style: TextStyle(
                      color: Colors.cyan[500],
                      fontFamily: 'SourceSans3',
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.grey[300],
                  ),
                ),
                Card(
                  color: Colors.cyan,
                  margin: EdgeInsetsDirectional.symmetric(
                      vertical: 0.0, horizontal: 40.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    title: Text(
                      '+2330535320858',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SourceSans3'),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Card(
                  color: Colors.cyan,
                  margin: EdgeInsetsDirectional.symmetric(
                      vertical: 0.0, horizontal: 40.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      'ayomideracheal12@gmail.com',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SourceSans3'),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Card(
                  color: Colors.cyan,
                  margin: EdgeInsetsDirectional.symmetric(
                      vertical: 0.0, horizontal: 40.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Nile House, MEST',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SourceSans3'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

// home: Scaffold(
// backgroundColor: Colors.white,
// // appBar: AppBar(
// //   backgroundColor: Colors.green,
// //   leading: Image(image: AssetImage('images/Asset 86.png')),
// //   title: Text('MY APP'),
//
// body: SafeArea(
// child: Column(
// // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // crossAxisAlignment: CrossAxisAlignment.stretch,
// children: [
// CircleAvatar(
// radius: 50.0,
// child: Image.asset('assets/images/mine.jpg'),
// ),
//
// // SizedBox(
// //   height: 300.0,
// // ),
// // Container(
// //   height: 100.0,
// // ),
//
// // width: double.infinity,
// // padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
// // margin: EdgeInsets.fromLTRB(50, 150, 30, 0),
// //                 color: Colors.lightGreen,
// // child: Text('I am Smart and Beautiful'),
//
// // SizedBox(
// //   height: 20.0),
// // Container(
// //   child: Text('Ibukun Ayomide-Baafog'),
// //
// //   alignment: Alignment.center,
// //
// //   // height: 100.0,
// //   // width: double.infinity,
// //   // padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
// //   // margin: EdgeInsets.fromLTRB(50, 150, 30, 0),
// //   //                 color: Colors.red,
// //   // child: Center(
// //   //   child: Image(image: AssetImage('images/mine.jpg')),
// //   // ),
// // ),
// // Container(
// //   // height: 100.0,
// //   // width: double.infinity,
// //   // padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
// //   // margin: EdgeInsets.fromLTRB(50, 150, 30, 0),
// //   //                 color: Colors.red,
// //   child: Text('SENIOR FLUTTER ENGINEER'),
// //   alignment: Alignment.center,
// //   // child: Center(
// //   //   child: Image(image: AssetImage('images/mine.jpg')),
// //   // ),
// // ),
// // Container(
// //   height: 200.0,
// //   // width: double.infinity,
// //   // padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
// //   // margin: EdgeInsets.fromLTRB(50, 150, 30, 0),
// //   color: Colors.blue,
// //
// //   child: Text('I am Smart and Beautiful'),
// //   // child: Center(
// //   //   child: Image(image: AssetImage('images/mine.jpg')),
// //   // ),
// // ),
// // SizedBox(
// //   height: 20.0,
// // )),
