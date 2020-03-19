import 'package:flutter/material.dart';

class PopUpMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Container(
        child: Row(
          children: <Widget>[
            Text(
              'Menu',
              style: TextStyle(color: Colors.white),
            ),
            Icon(
              Icons.restaurant,
              color: Colors.white,
            ),
          ],
        ),
      ),
      itemBuilder: (_) => [
        PopupMenuItem(
          value: 0,
          child: Text('LOLnaklfnakfas'),
        ),
        PopupMenuItem(
          value: 1,
          child: Text('LOLagagagas'),
        ),
        PopupMenuItem(
          value: 2,
          child: Text('LOLasfasfasfa'),
        ),
        PopupMenuItem(
          value: 3,
          child: Text('LOLasdf aksgn;asgasjb'),
        ),
      ],
    );
  }
}
