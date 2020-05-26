import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertalk/widgets/food_item.dart';

import 'category_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.menu),
                SizedBox(
                  height: 32,
                ),
                Text(
                  'Hi, James!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  'What do you want to order today?',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  )
                ),
                SizedBox(height: 8,),
                Container(
                  decoration: ShapeDecoration(
                    color: Color(0xfffff2d8),
                    shape: StadiumBorder(

                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                        child: Icon(
                          Icons.search,
                          color: Color(0xFF757575),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: new InputDecoration.collapsed(
                            hintText: 'Search',
                          ),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 32,),
                Container(
                  height: 80,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CategoryItem(),
                      CategoryItem(),
                      CategoryItem(),
                      CategoryItem(),
                      CategoryItem(),
                      CategoryItem(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Specials',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize: 24
                  ),
                ),
                SizedBox(height: 32,),
                Container(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      FoodItem(),
                      FoodItem(),
                      FoodItem(),
                      FoodItem(),
                      FoodItem(),
                      FoodItem(),
                      FoodItem(),
                      FoodItem(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
