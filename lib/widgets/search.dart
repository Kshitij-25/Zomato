import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Container(
      padding: EdgeInsets.all(3.0),
      child: TextField(
        enableInteractiveSelection: false,
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search for Restaurants, dishes, sweets, snacks",
          hintStyle:
              TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black45,
            size: 25,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 0.0, color: Colors.transparent),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
