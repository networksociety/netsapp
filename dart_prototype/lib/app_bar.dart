import 'package:flutter/material.dart';

class NetsAppBar extends AppBar {

  NetsAppBar({ Key key, Widget title }) : super(key: key, title: title, actions: <Widget>[
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(Icons.notifications),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(Icons.more_vert),
      onPressed: () {},
    )
  ]);
}
