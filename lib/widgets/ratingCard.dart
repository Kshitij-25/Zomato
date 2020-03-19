import 'package:flutter/material.dart';

class RatingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6.0),
      child: Container(
        height: 22,
        width: 35,
        color: Colors.lightGreen,
        child: Center(
            child: Text(
          "3.6",
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
    
  }
}
