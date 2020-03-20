import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  final String image;
  ImageBox({@required this.image});
  @override
  Widget build(BuildContext context) {
    return Stack(
       children: <Widget>[
         Container(
             height: 300,
             width: 150,
             child: Image.asset('assets/$image',fit: BoxFit.fitHeight)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            height: 20,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.horizontal(right: Radius.circular(10))
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 7.0),
              child: Text('15% Off',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12),),
            ),
          ),
        )
       ],
    );
  }
}
