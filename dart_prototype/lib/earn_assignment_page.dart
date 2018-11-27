import 'package:flutter/material.dart';
import 'app_bar.dart';

class EarnAssignmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: NetsAppBar(title: Text('Amanthyo')),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('images/pitch_deck.jpg'),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Assess & Earn'),
                      Text(
                        'Startup Pitch Deck: Amanthyo',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 18.0, bottom: 18.0),
                        child: Text(
                          'OPEN',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 18.0),
                        child: Row(
                          children: <Widget>[
                            Text('Reward'),
                            Text(
                              ' 250.00',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 14.0,
                              color: Colors.orange,
                            ),
                            Text(
                              'NST',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Due by: Tomorrow'),
                            Text('Difficulty: Easy'),
                          ],
                        ),
                      ),
                      Text(
                        'ASSIGNMENT',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          'Upload a CV in PDF format for each member of the team presented in the Amanthyo Pitch Deck.'),
                    ],
                  ),
                ),
              ),
              Container(
                child: Container(
                  margin: EdgeInsets.all(24.0),
                  child: RaisedButton(
                    child: Text(
                      'Accept Assignment',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Theme.of(context).accentColor,
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
