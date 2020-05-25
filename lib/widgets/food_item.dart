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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xfffff2d8),
              ),
              width: 150,
              height: 240,
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
