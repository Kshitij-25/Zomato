import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:zomato/widgets/image_box.dart';
import 'package:zomato/widgets/ratingCard.dart';

class ListContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: ImageBox(image: 'khichdi.jpg'),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 7),
                    child: _buildText('Khichdi Experiment', Colors.black,
                        FontWeight.bold, 21.0),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  RatingCard(),
                ],
              ),
              _buildText('Healthy Food, North Indian', Colors.black54,
                  FontWeight.normal, 17.0),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Dash(
                  dashLength: 7,
                  length: 200,
                  dashThickness: 2,
                  dashGap: 5.0,
                  dashColor: Colors.black26,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.attach_money,
                    color: Colors.amber,
                    size: 15.0,
                  ),
                  _buildText(
                      '150 per person', Colors.black54, FontWeight.bold, 15.0),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Dash(
                  dashLength: 7,
                  length: 200,
                  dashThickness: 2,
                  dashGap: 5.0,
                  dashColor: Colors.black26,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 15.0,
                    color: Colors.pink,
                  ),
                  _buildText(
                      'Live tracking ',
                      Colors.black,
                      FontWeight.bold,
                      15.0),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.motorcycle,
                    size: 15.0,
                    color: Colors.blue,
                  ),
                  _buildText(
                      '25-35 Mins ',
                      Colors.black,
                      FontWeight.bold,
                      15.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget _buildText(
      String text, Color color, FontWeight fontWeight, double fontSize) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style:
          TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize),
    );
  }
}
