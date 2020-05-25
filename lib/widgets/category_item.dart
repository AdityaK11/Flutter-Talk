import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xfffff2d8),
      ),
      margin: EdgeInsets.only(right: 32),
      width: 60,
    );
  }
}
