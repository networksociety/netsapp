import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final Color _hightlightColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
            canvasColor: _hightlightColor,
            textTheme: Theme
                .of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.black54)),
          ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //579eda
        fixedColor: Colors.white,
        iconSize: 32.0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
            icon: Icon(Icons.import_contacts),
            title: Text('News'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), title: Text('Contacts')),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment), title: Text('Wallet')),
        ],
      ),
    );
  }
}
