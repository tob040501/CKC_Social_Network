import 'package:flutter/material.dart';
import 'package:social_network/app/modules/Friends/Components/Friends/Friends_present.dart';

class Friends extends StatefulWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [FriendsPresent()],
    );
  }
}
