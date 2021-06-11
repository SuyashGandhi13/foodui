import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodui/FoodCards.dart';

class HomeScreen extends StatelessWidget {
  final String s = "\$ 21";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 40.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.lightBlueAccent,
                      image: DecorationImage(
                          image: AssetImage('images/tuxedo.png'),
                          fit: BoxFit.contain),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'SEARCH FOR \nRECIPES',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Source Sans Pro',
                fontSize: 28.0,
                fontWeight: FontWeight.w900,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: 25.0),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Color(0xFFEDEDED),
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Text(
              'Recommended',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 24.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 25.0),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FoodCard(
                    source: 'images/burger.png',
                    text: 'Hamburg',
                    price: 21,
                    cardColor: Color(0xFFFFEAC5),
                    textColor: Color(0xFF786138),
                  ),
                  FoodCard(
                    source: 'images/french fry.png',
                    text: 'Fries',
                    price: 15,
                    cardColor: Color(0xFFC3E3FF),
                    textColor: Color(0xFF375A78),
                  ),
                  FoodCard(
                    source: 'images/donut.png',
                    text: 'Donut',
                    price: 7,
                    cardColor: Color(0xFFD7FBD9),
                    textColor: Color(0xFF437846),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
