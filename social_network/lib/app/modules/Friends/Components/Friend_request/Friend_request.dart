import 'package:flutter/material.dart';
import 'package:social_network/app/modules/Friends/Components/Friend_request/Friends_request_content.dart';

class FriendRequest extends StatefulWidget {
  const FriendRequest({Key? key}) : super(key: key);

  @override
  _FriendRequestState createState() => _FriendRequestState();
}

class _FriendRequestState extends State<FriendRequest> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: SizedBox(
            width: 350,
            height: 100,
            child: Center(child: FriendsRequestContent()),
          ),
        )
      ],
    );
  }
}
