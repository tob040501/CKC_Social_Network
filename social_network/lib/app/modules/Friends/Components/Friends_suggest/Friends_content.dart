import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/images.dart';
import 'package:social_network/app/modules/Friends/Components/Friends_suggest/Friends_button.dart';

class FriendsContent extends StatefulWidget {
  const FriendsContent({Key? key}) : super(key: key);

  @override
  _FriendsContentState createState() => _FriendsContentState();
}

class _FriendsContentState extends State<FriendsContent> {
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Nguyễn Thị Như Quỳnh'),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: const FriendsButton(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
