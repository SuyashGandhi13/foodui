import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FoodTab extends StatelessWidget {
  final String source;
  final String text;
  final double rating;
  final int price;

  FoodTab(
      {@required this.source, @required this.text, this.rating, this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15.0, 15.0, 15.0),
      child: Row(
        children: [
          Container(
            width: 80,
            child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFFFE4E0),
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
              SmoothStarRating(
                allowHalfRating: false,
                starCount: 5,
                rating: rating,
                color: Color(0xFFFFD143),
                borderColor: Color(0xFFFFD143),
                size: 15.0,
                spacing: 0,
              ),
              Text(
                '\$ $price',
                style: TextStyle(
                    color: Color(0xFFF68D7F),
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .25,
          ),
          FloatingActionButton(
            heroTag: text,
            onPressed: () {},
            child: Icon(Icons.add),
            mini: true,
            backgroundColor: Color(0xFFFE7D6A),
          )
        ],
      ),
    );
  }
}
