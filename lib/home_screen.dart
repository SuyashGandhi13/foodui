import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodui/food_card.dart';
import 'food_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 15, 0, 15),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.sort,
                    color: Colors.black,
                    size: 40.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 6.0,
                            spreadRadius: 4.0,
                            offset: Offset(0, 3))
                      ],
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
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: TextField(
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
                    onPressed: (){
                      Navigator.pushNamed(context, '/second');
                    },
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
            ),
            SizedBox(height: 25.0),
            TabBar(
              controller: tabController,
              labelColor: Colors.black,
              indicatorColor: Colors.transparent,
              labelPadding: EdgeInsets.only(right: 40),
              labelStyle: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              unselectedLabelStyle: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w700,
                  fontSize: 14),
              isScrollable: true,
              tabs: [
                Tab(child: Text('FEATURED')),
                Tab(child: Text('COMBOS')),
                Tab(child: Text('FAVOURITE')),
                Tab(child: Text('RECOMMENDED')),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height - 450,
              child: TabBarView(
                controller: tabController,
                children: [
                  ListView(
                    children: [
                      FoodTab(
                          source: 'images/pizza.png',
                          text: 'Cheese pizza',
                          price: 21,
                          rating: 4),
                      FoodTab(
                          source: 'images/hot dog.png',
                          text: 'Hot dog',
                          price: 15,
                          rating: 3)
                    ],
                  ),
                  ListView(
                    children: [
                      FoodTab(
                          source: 'images/pizza.png',
                          text: 'Cheese pizza',
                          price: 21,
                          rating: 4),
                      FoodTab(
                          source: 'images/hot dog.png',
                          text: 'Hot dog',
                          price: 15,
                          rating: 3)
                    ],
                  ),
                  ListView(
                    children: [
                      FoodTab(
                          source: 'images/pizza.png',
                          text: 'Cheese pizza',
                          price: 21,
                          rating: 4),
                      FoodTab(
                          source: 'images/hot dog.png',
                          text: 'Hot dog',
                          price: 15,
                          rating: 3)
                    ],
                  ),
                  ListView(
                    children: [
                      FoodTab(
                          source: 'images/pizza.png',
                          text: 'Cheese pizza',
                          price: 21,
                          rating: 4),
                      FoodTab(
                          source: 'images/hot dog.png',
                          text: 'Hot dog',
                          price: 15,
                          rating: 3)
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
