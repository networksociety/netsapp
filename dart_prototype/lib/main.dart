import 'package:flutter/material.dart';
import 'landing_page.dart';

void main() => runApp(new MyApp());

final Color hightlightColor = Colors.blue;

class MyApp extends StatelessWidget {
  final String title = 'NetSApp';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      theme: new ThemeData(
        accentColor: hightlightColor,
        canvasColor: Color(0xFFEFEFEF),
        fontFamily: 'Roboto'
      ),
      home: NetSAppLandingPage(),
    );
  }
}
