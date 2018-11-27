import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  final IconData _iconData;
  final Color _color;
  final String _text;
  final String _projectName;
  final Widget _page;
  final Color _cardHighlightColor = const Color(0xFFbfbfbf);
  final double _cardHeight = 90.0;

  ActionCard({
    Key key,
    IconData iconData,
    Color color,
    String text,
    String projectName,
    Widget page,
  }): _iconData = iconData,
      _color = color,
      _text = text,
      _projectName = projectName,
      _page = page,
      super(key: key);

  @override
    Widget build(BuildContext context) {
      return InkWell(
        onTap: () {
          if (_page != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => _page),
            );
          }
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 1.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              new BoxShadow(
                color: _cardHighlightColor,
                offset: new Offset(1.0, 1.0),
              )
            ],
          ),
          height: _cardHeight,
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 24.0),
                child: Icon(
                  _iconData,
                  size: 28.0,
                  color: _color
                ),
              ),
              Container(
                margin: EdgeInsets.all(14.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 8.0),
                      child: Text(_text,
                        style: TextStyle(
                          color: _color,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0
                        ),
                      ),
                    ),
                    Text(_projectName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      );
    }
}
