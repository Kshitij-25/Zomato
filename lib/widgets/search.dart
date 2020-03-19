import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 1.3,
            child: SearchBar(
              onSearch: null,
              onItemFound: null,
              hintText: "Search for restaurants, cuisnes...",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(icon: Icon(Icons.sort), onPressed: () {}),
          )
        ],
      ),
    );
  }
}
