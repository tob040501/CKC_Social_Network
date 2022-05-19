import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/images.dart';
import 'package:social_network/app/modules/Friends/Components/Friends/Friends_present_dropdown/Friends_dropdown.dart';

class FriendsPresentContent extends StatefulWidget {
  const FriendsPresentContent({Key? key}) : super(key: key);

  @override
  _FriendsPresentContentState createState() => _FriendsPresentContentState();
}

class _FriendsPresentContentState extends State<FriendsPresentContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(avatar),
          ),
          Center(
            child: const Text(
              'Nguyễn Thị Như Quỳnh',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Container(
            child: FriendsDropdown(),
          ),
        ],
      ),
    );
  }
}
