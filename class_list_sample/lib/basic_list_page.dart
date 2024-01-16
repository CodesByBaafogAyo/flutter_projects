import 'package:flutter/material.dart';
import 'card.dart'; // Assuming this is where your Card widget is defined
import 'card_details.dart';

class BasicListApp extends StatefulWidget {
  const BasicListApp({Key? key}) : super(key: key);

  @override
  State<BasicListApp> createState() => _BasicListAppState();
}

class _BasicListAppState extends State<BasicListApp> {
  final CardDetails cardDetails = CardDetails();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          Text(
            'Skip Now',
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.underline,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          )
        ],
        backgroundColor: Colors.black,
        leading: Text(
          'Back',
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              width: 230,
              child: Text(
                'Choose what you would like to make your habit',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: cardDetails.getCardCount(),
                itemBuilder: (BuildContext context, int pos) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Stack(
                      children: [
                        Card(
                          color: cardDetails.getCardColor(pos),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.all(20),
                            title: Text(
                              cardDetails.getCardTitle(pos),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(cardDetails.getCardSubtitle(pos)),
                            trailing: Container(
                              width: 50,
                              height: 50,
                              child: cardDetails.getCardImage(pos),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -10,
                          right: -10,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color:
                                    Colors.black, // Adjust the color as needed
                                width: 6.0, // Adjust the width as needed
                              ),
                              color: Colors.white,
                            ),
                            width: 50,
                            height: 50,
                            child: Icon(Icons.check_circle_outline_outlined),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
