import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Stack(
        children: [
          Container(
            width: 200,
            height: 250,
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xfffff2d8),
              ),
              width: 150,
              height: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Noodles',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '\$ 7,50',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(height: 16,),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'See details',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 10
                          ),
                        ),
                      ),
                      Container(
                        height: 32,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF6ab9bb),
                        ),
                        child: IconButton(
                          padding: EdgeInsets.all(0),
                          icon: Icon(Icons.navigate_next,
                            color: Color(0xfffff2d8),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amberAccent,
                image: DecorationImage(image: AssetImage('images/noodles.png'))
              ),
              width: 125,
              height: 125,
            ),
          )
        ],
      ),
    );
  }
}
