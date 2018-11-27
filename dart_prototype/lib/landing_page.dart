import 'package:flutter/material.dart';
import 'home_page.dart';

class NetSAppLandingPage extends StatelessWidget {
  NetSAppLandingPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 100.0, bottom: 50.0),
                      child: Image.asset(
                        'images/ns_logo.png',
                        width: 120.0,
                        height: 120.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'Welcome to',
                      style: TextStyle(
                        fontFamily: 'RobotoCondensed',
                        fontSize: 34.0
                      ),
                    ),
                    Text(
                      'NetsApp!',
                       style: TextStyle(
                        fontFamily: 'RobotoCondensed',
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 36.0),
                      child: Text(
                        'Learn, Earn and Contribute to the Community of 21st Century Citizens',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'RobotoCondensed',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 24.0),
              child: RaisedButton(
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Theme.of(context).accentColor,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
