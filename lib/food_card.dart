import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String source;
  final String text;
  final int price;
  final Color cardColor;
  final Color textColor;

  FoodCard({this.source,this.text,this.price,this.cardColor,this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.0),
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: cardColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(source),
                  fit: BoxFit.contain),
            ),
          ),
          SizedBox(height: 30),
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              fontSize: 21,
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
          ),
          Text(
            '\$ $price',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              fontSize: 21,
              fontWeight: FontWeight.w700,
              color: textColor),
            ),
        ],
      ),
    );
  }
}
