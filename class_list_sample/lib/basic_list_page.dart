import 'package:flutter/material.dart';

class BasicListApp extends StatefulWidget {
  const BasicListApp({super.key});

  @override
  State<BasicListApp> createState() => _BasicListAppState();
}

class _BasicListAppState extends State<BasicListApp> {
  List<String> FeedItems = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
    "Item 8",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          Text(
            'Skip Now',
            style: TextStyle(
                color: Colors.white, decoration: TextDecoration.underline),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          )
        ],
        backgroundColor: Colors.black,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Text('Back',
              style: TextStyle(
                  color: Colors.white, decoration: TextDecoration.underline)),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        // color: Colors.red,
        child: Column(
          children: [
            Text(
              'Choose what you will like to make your habit',
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int pos) {
                    String name = FeedItems.length;
                    return Card(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: SizedBox(
                        child: ListTile(
                          title: Text(name),
                          subtitle: Text('Position:' + position.toString()),
                          trailing: Icon(Icons.abc_sharp),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
