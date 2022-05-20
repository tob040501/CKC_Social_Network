import 'package:flutter/material.dart';

import 'package:social_network/app/modules/Friends/Components/Friends/Friends_present_content.dart';

class FriendsPresent extends StatefulWidget {
  const FriendsPresent({Key? key}) : super(key: key);

  @override
  _FriendsPresentState createState() => _FriendsPresentState();
}

class _FriendsPresentState extends State<FriendsPresent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      child: const Card(
        child: SizedBox(
          width: double.infinity,
          height: 60,
          child: FriendsPresentContent(),
        ),
      ),
    );
  }
}
