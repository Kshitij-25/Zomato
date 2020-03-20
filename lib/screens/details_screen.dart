import 'package:flutter/material.dart';
import 'package:zomato/widgets/popup_menu.dart';
import 'package:zomato/widgets/ratingCard.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 300,
                snap: true,
                floating: true,
                pinned: true,
                actionsIconTheme: IconThemeData(opacity: 0.0),
                flexibleSpace: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.network(
                        "https://cdn.pixabay.com/photo/2016/04/09/09/22/pizza-1317699_960_720.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                        child: Container(
                      color: Colors.black.withOpacity(0.2),
                    )),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Your's Pizza",
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RatingCard(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'DELEIVERING FOOD TO',
                            style: TextStyle(fontSize: 16),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              ),
                              Text(
                                'HOME (SECTOR 4 VAISHALI GZB)',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Text(
                                  'CHANGE',
                                  style: TextStyle(color: Colors.green),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Delivery in 25-40 minutes. Live tracking available.',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "VEG ONLY",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Switch.adaptive(
                            onChanged: null,
                            value: false,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Bestsellers',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'PIZZZAAAA',
                      style: TextStyle(fontSize: 60),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Text(
                      'PIZZZAAAA',
                      style: TextStyle(fontSize: 60),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Text(
                      'PIZZZAAAA',
                      style: TextStyle(fontSize: 60),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Text(
                      'PIZZZAAAA',
                      style: TextStyle(fontSize: 60),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Text(
                      'PIZZZAAAA',
                      style: TextStyle(fontSize: 60),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Text(
                      'PIZZZAAAA',
                      style: TextStyle(fontSize: 60),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Text(
                      'PIZZZAAAA',
                      style: TextStyle(fontSize: 60),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Text(
                      'PIZZZAAAA',
                      style: TextStyle(fontSize: 60),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Text(
                      'PIZZZAAAA',
                      style: TextStyle(fontSize: 60),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PopUpMenu()
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}