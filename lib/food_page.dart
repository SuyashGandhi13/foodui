import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodui/featured.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15.0, 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.sort,
                    color: Colors.black,
                    size: 40,
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(.3),
                                blurRadius: 6.0,
                                spreadRadius: -2.0,
                                offset: Offset(0, 8)),
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFFE7D6A),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 28.0,
                        top: 1.0,
                        child: CircleAvatar(
                          radius: 6.0,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 7,
                                  color: Color(0xFFFE7D6A),
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Text(
              'SUPER\nBURGER',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Source Sans Pro',
                fontSize: 28.0,
                fontWeight: FontWeight.w900,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * .6,
                  width: MediaQuery.of(context).size.width * .7,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/burger.png'),
                          fit: BoxFit.contain)),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 6,
                                spreadRadius: 1,
                                offset: Offset(-1, 4)),
                          ],
                        ),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Icon(
                              Icons.favorite_border,
                              color: Color(0xFFFE7D6A),
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .05,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 6,
                                spreadRadius: 1,
                                offset: Offset(-1, 4)),
                          ],
                        ),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Icon(
                              Icons.restore,
                              color: Color(0xFFFE7D6A),
                              size: 30,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$42',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.black54,
                  ),
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * .65,
                  decoration: BoxDecoration(
                    color: Color(0xFFFE7D6A),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * .3,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.add,
                              color: Color(0xFFFE7D6A),
                            ),
                            Text(
                              '2',
                              style: TextStyle(color: Color(0xFFFE7D6A)),
                            ),
                            Icon(
                              Icons.remove,
                              color: Color(0xFFFE7D6A),
                            )
                          ],
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Add to cart',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ))
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'FEATURED',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 460,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      FeaturedFood(
                        source: 'images/cheese.png',
                        text: 'Sweet cheese',
                        color: Color(0xFFFCD7F7),
                        price: 11,
                      ),
                      FeaturedFood(
                        source: 'images/popcorn.png',
                        text: 'Sweet popcorn',
                        color: Color(0xFFFEED6CF),
                        price: 6,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      FeaturedFood(
                        source: 'images/taco.png',
                        text: 'Taco',
                        color: Color(0xFFC4E2FD),
                        price: 12,
                      ),
                      FeaturedFood(
                        source: 'images/sandwich.png',
                        text: 'Cheese Sandwich',
                        color: Color(0xFFC5F6C5),
                        price: 8,
                      )
                    ],
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
