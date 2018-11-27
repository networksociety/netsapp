import 'package:flutter/material.dart';
import 'learn_assignmnet_page.dart';

class LearnCard extends StatelessWidget {
  final Color _cardHighlightColor = const Color(0xFFbfbfbf);
  final String _iconPath;
  final String _companyName;

  LearnCard({Key key, String iconPath, String name, String price})
      : _iconPath = iconPath,
        _companyName = name,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LearnAssignmentPage()),
        );
      },
      child: Container(
        height: 100.0,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          boxShadow: [
            new BoxShadow(
              color: _cardHighlightColor,
              offset: new Offset(1.0, 1.0),
              blurRadius: 2.0,
            )
          ],
        ),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(16.0),
              child: Image.asset(
                _iconPath,
                width: 50.0,
                height: 50.0,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Assess & Earn'),
                  Text(
                    'Startup Pitch Deck: \n$_companyName',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'LEARN',
                    style: TextStyle(
                      color: Color(0xFFff8700),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
