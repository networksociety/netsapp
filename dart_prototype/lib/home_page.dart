import 'package:flutter/material.dart';
import 'earn_page.dart';
import 'learn_page.dart';
import 'action_card.dart';
import 'profile_card.dart';
import 'bottom_bar.dart';
import 'app_bar.dart';

class HomePage extends StatelessWidget {
  final Color cardHighlightColor = Color(0xFFbfbfbf);
  final double cardHeight = 90.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NetsAppBar(
        title: Text('NetsApp'),
      ),
      drawer: Drawer(),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(12.0),
            child: Text('What do you want to do?'),
          ),
          ActionCard(color: Colors.red, iconData: Icons.monetization_on, text: 'Earn', projectName: 'LawBlock', page: EarnPage()),
          ActionCard(color: Colors.blue, iconData: Icons.lightbulb_outline, text: 'Learn', projectName: 'SunExchange', page: LearnPage()),
          ActionCard(color: Color(0xffef8732), iconData: Icons.calendar_today, text: 'Updates', projectName: 'LawBlock'),
          Container(
            margin: EdgeInsets.all(12.0),
            child: Text('Active Tasks (3)'),
          ),
          ProfileCard(profilePicUrl: 'https://randomuser.me/api/portraits/women/91.jpg'),
          ProfileCard(profilePicUrl: 'https://randomuser.me/api/portraits/women/9.jpg'),
          ProfileCard(profilePicUrl: 'https://randomuser.me/api/portraits/women/3.jpg'),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
