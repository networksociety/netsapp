import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String _profilePicUrl;
  final Color _cardHighlightColor = const Color(0xFFbfbfbf);
  final double _cardHeight = 140.0;

  ProfileCard({
    Key key,
    String profilePicUrl,
  }) : _profilePicUrl = profilePicUrl, super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
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
      height: _cardHeight,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container (
              margin: EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Verify Information',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text('Visit the LinkedIn Profile of this amazing person...'),
                  Text('Due in 2 days'),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            width: 120.0,
            child: Image.network(_profilePicUrl),
          )
        ],
      ),
    );
  }
}
