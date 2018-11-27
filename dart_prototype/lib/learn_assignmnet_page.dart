import 'package:flutter/material.dart';
import 'app_bar.dart';

class LearnAssignmentPage extends StatelessWidget {
  final String groupValue = 'c';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: NetsAppBar(title: Text('Sun Exchange')),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('images/sun_exchange.jpg'),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Learn & Save'),
                          Text(
                            'Save on your Engery Bill',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 18.0, bottom: 18.0),
                            child: Row(
                              children: <Widget>[
                                Text('Reward'),
                                Text(
                                  ' 10.00',
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
                                Text(
                                  'LEARNING ASSIGNMENT',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    'Watch the video from Sun Exchange and answer to the following question:'),
                              ],
                            ),
                          ),
                          Text(
                            'How can you save seas from being polluted by plastic?',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                RadioListTile(
                                  value: 'a',
                                  groupValue: groupValue,
                                  title: Text('Buying water in plastic bottles'),
                                  onChanged: (value) {},
                                ),
                                RadioListTile(
                                  value: 'b',
                                  groupValue: groupValue,
                                  title: Text('Increasing your plastic consumption'),
                                  onChanged: (value) {},
                                ),
                                RadioListTile(
                                  value: 'c',
                                  groupValue: groupValue,
                                  title: Text('Recycling plastic as in rPET.'),
                                  onChanged: (value) {

                                  },
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: RaisedButton(
                                    child: Text(
                                      'Submit Answer',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    color: Colors.orange,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
