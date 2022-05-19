import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';
import 'package:social_network/app/modules/Friends/Components/Friend_request/Friend_request.dart';
import 'package:social_network/app/modules/Friends/Components/Friends/Friends.dart';
import 'package:social_network/app/modules/Friends/Components/Friends_suggest/Friends_suggest.dart';

class FriendsTabbar extends StatelessWidget {
  const FriendsTabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(25.0)),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: miniColor,
                      borderRadius: BorderRadius.circular(25.0)),
                  labelColor: backgroundColor,
                  unselectedLabelColor: blackColor,
                  tabs: const [
                    Tab(
                      text: 'Gợi ý',
                    ),
                    Tab(
                      text: 'Lời kết bạn',
                    ),
                    Tab(
                      text: 'Bạn bè',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: FriendsSuggest(),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: FriendRequest(),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Friends(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
