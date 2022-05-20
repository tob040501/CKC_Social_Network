import 'package:flutter/material.dart';
import 'package:social_network/app/modules/Friends/Components/Friends_tabbar.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      child: const FriendsTabbar(),
    );
  }
}
