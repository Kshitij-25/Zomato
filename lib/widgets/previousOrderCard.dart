import 'package:flutter/material.dart';
import 'package:zomato/widgets/ratingCard.dart';

class PreviousOrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          color: Colors.white,
          height: 230,
          width: 180,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                  child: Container(
                      //color: Colors.red,
                    height: 140,
                      width: double.infinity,
                      child: Stack(
                        children: <Widget>[
                          Image.network(
                            "https://i1.wp.com/www.cookingfromheart.com/wp-content/uploads/2017/06/Paneer-Makhani-6.jpg?resize=1024%2C680",
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            top: 7,
                              left: 135,
                              child: RatingCard())],
                      ))),
              Container(
                height: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 5,),

                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Text(
                        "Chawlas's Tandoori Junction",
                        overflow: TextOverflow.ellipsis,
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                    ),
                      SizedBox(
                        height: 5,
                      ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0),
                      child: Text(
                        "NORTH INDIAN", overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 3,),
                    Divider(),
                    Expanded(
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 12,
                            color: Colors.pinkAccent,
                          ),
                          Text(
                            "Live tracking",
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.directions_bike,
                            size: 12,
                            color: Colors.blueAccent,
                          ),
                          Text(
                            "20-30 Mins",
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 5,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
