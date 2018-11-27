import 'package:flutter/material.dart';
import 'learn_card.dart';
import 'app_bar.dart';

class LearnPage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Theme(
        data: Theme.of(context).copyWith(backgroundColor: Colors.white),
        child: Scaffold(
          appBar: NetsAppBar(title: Text('Learn')),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    LearnCard(iconPath: 'images/sun_logo.jpg', name: 'Save on your energy bill /w Sun Exchange'),
                    LearnCard(iconPath: 'images/ns_logo.png', name: 'Tokenize your business with NSL'),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black12,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 24.0, top: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Wallet Balance'
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '100.00',
                                style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.star,
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
                        ],
                      ),
                    ),
                    Container (
                      margin: EdgeInsets.all(6.0),
                      child: Image.asset(
                        'images/ns_logo.png',
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        )
      );
    }
}
