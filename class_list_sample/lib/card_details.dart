import 'package:flutter/material.dart';

class Details {
  final String cardTitle;
  final String cardDescription;

  Details(this.cardTitle, this.cardDescription);
}

class CardDetails {
  int _cardNumber = 0;
  List<Details> _cardDetails = [
    Details('Water', 'Drink the amount of water that your body needs everyday'),
    Details('Sport', 'Exercise to maintain daily physical activity'),
    Details(
        'Steps', 'Take your normal steps to maintain daily physical activity'),
    Details('Read', 'Read daily to keep your mind challenged'),
  ];

  List<Color> _cardColors = [
    Color(0xffFEB3EF),
    Color(0xff9DDEF1),
    Color(0xffF4F377),
    Color(0xffDB9ACE),
  ];

  List<Image> _cardImages = [
    Image.asset('images/bottle.png'),
    Image.asset('images/dumbbell.png'),
    Image.asset('images/step.png'),
    Image.asset('images/book.png'),
  ];

  int getCardCount() {
    return _cardDetails.length;
  }

  String getCardTitle(int index) {
    if (index >= 0 && index < _cardDetails.length) {
      return _cardDetails[index].cardTitle;
    }
    return '';
  }

  String getCardSubtitle(int index) {
    if (index >= 0 && index < _cardDetails.length) {
      return _cardDetails[index].cardDescription;
    }
    return '';
  }

  Color getCardColor(int index) {
    if (index >= 0 && index < _cardColors.length) {
      return _cardColors[index];
    }
    return Colors.grey;
  }

  Image getCardImage(int index) {
    if (index >= 0 && index < _cardImages.length) {
      return _cardImages[index];
    }
    // Return a default image or handle the out-of-bounds case appropriately
    return Image.asset('images/default_image.png');
  }
}
