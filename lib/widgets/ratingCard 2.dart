import 'package:flutter/material.dart';

class RatingCard extends StatelessWidget {
  final double rating = 3.6;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6.0),
      child: Container(
        height: 22,
        width: 35,
        color: rating>4.0?Colors.green:(rating<4.0 && rating>2.0? Colors.lightGreen:Colors.orange),
        child: Center(
          child: Text(
            "$rating",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
