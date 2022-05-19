import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/images.dart';
import 'package:social_network/app/modules/Friends/Components/Friends_suggest/Friends_button.dart';
import 'package:social_network/app/modules/Friends/Components/Friends_suggest/Friends_content.dart';

class FriendsSuggest extends StatefulWidget {
  const FriendsSuggest({Key? key}) : super(key: key);

  @override
  _FriendsSuggestState createState() => _FriendsSuggestState();
}

class _FriendsSuggestState extends State<FriendsSuggest> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: SizedBox(
            width: 350,
            height: 100,
            child: Center(child: FriendsContent()),
          ),
        ),
        Card(
          child: SizedBox(
            width: 350,
            height: 100,
            child: Center(child: FriendsContent()),
          ),
        ),
        Card(
          child: SizedBox(
            width: 350,
            height: 100,
            child: Center(child: FriendsContent()),
          ),
        ),
        Card(
          child: SizedBox(
            width: 350,
            height: 100,
            child: Center(child: FriendsContent()),
          ),
        ),
        Card(
          child: SizedBox(
            width: 350,
            height: 100,
            child: Center(child: FriendsContent()),
          ),
        ),
        Card(
          child: SizedBox(
            width: 350,
            height: 100,
            child: Center(child: FriendsContent()),
          ),
        ),
        Card(
          child: SizedBox(
            width: 350,
            height: 100,
            child: Center(child: FriendsContent()),
          ),
        ),
        Card(
          child: SizedBox(
            width: 350,
            height: 100,
            child: Center(child: FriendsContent()),
          ),
        ),
        Card(
          child: SizedBox(
            width: 350,
            height: 100,
            child: Center(child: FriendsContent()),
          ),
        ),
      ],
    );
  }
}
