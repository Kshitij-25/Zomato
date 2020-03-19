import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            // color: Colors.red,
            height: 235,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      height: 50,
                      width: 50,
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2016/04/09/09/22/pizza-1317699_960_720.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Pizza Plus',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Vasundhara, Ghaziabad',
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                ),
                Text(
                  'ITEMS',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('1 x Country Special Pizza'),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'ORDERED ON',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('03 Mar 2020 at 7:00 PM'),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'TOTAL AMOUNT',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('₹350.00'),
                Divider(
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Delivered'),
                    FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.replay),
                      label: Text('Repeat Order'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
