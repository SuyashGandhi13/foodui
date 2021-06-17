import 'package:flutter/material.dart';

class FeaturedFood extends StatelessWidget {
  final String source;
  final String text;
  final int price;
  final Color color;

  FeaturedFood(
      {@required this.source, @required this.text, this.price,this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 15.0, 50.0, 15.0),
        child: Row(
          children: [
            Container(
              width: 80,
              child: Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: color,
                ),
                child: Center(
                  child: Image.asset(
                    source,
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
                SizedBox(height: 10.0,),
                Text(
                  '\$ $price',
                  style: TextStyle(
                      color: Color(0xFFF68D7F),
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
