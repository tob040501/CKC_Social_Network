import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:social_network/app/core/values/colors.dart';

import 'package:social_network/app/core/values/images.dart';
import 'package:social_network/app/modules/Friends/Friends_page.dart';
import 'package:social_network/app/modules/home/components/home_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _index = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final screens = [
    HomePage(),
    FriendsPage(),
    Text('Post'),
    Text('Me'),
    Text('Notification'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: miniColor,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: miniColor,
              title: Container(
                padding: EdgeInsets.zero,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset(
                        logo,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.zero,
                      child: Container(
                        padding: EdgeInsets.zero,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.search),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.message_rounded))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: screens[_index],
            bottomNavigationBar: CurvedNavigationBar(
              key: _bottomNavigationKey,
              index: 0,
              height: 60.0,
              items: <Widget>[
                Icon(Icons.home, size: 30),
                Icon(Icons.people, size: 30),
                Icon(Icons.add, size: 30),
                Icon(Icons.person, size: 30),
                Icon(Icons.notifications, size: 30),
              ],
              color: miniColor,
              buttonBackgroundColor: miniColor,
              backgroundColor: backgroundColor,
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(milliseconds: 600),
              onTap: (index) {
                setState(() {
                  _index = index;
                });
              },
              letIndexChange: (index) => true,
            ),
          ),
        ),
      ),
    );
  }
}
