import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'earn_card.dart';

class EarnPage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Theme(
        data: Theme.of(context).copyWith(backgroundColor: Colors.white),
        child: Scaffold(
          appBar: NetsAppBar(title: Text('Earn')),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    EarnCard(iconPath: 'images/dash_icon.png', name: 'Amanthyo', price: '250.0'),
                    EarnCard(iconPath: 'images/nxt_icon.png', name: 'Spayratha', price: '100.0'),
                    EarnCard(iconPath: 'images/tether_icon.png', name: 'Netsapp', price: '450.0'),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'COMPLETED',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0
                            ),
                          ),
                          Text(
                            '>',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    EarnCard(iconPath: 'images/etherium_icon.png', name: 'Amanthyo', price: '1050.0'),
                    EarnCard(iconPath: 'images/peercoin_icon.png', name: 'Peer', price: '50.0'),
                    EarnCard(iconPath: 'images/ripple_icon.png', name: 'Ripple', price: '550.0'),
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
