import 'package:flutter/material.dart';

class FriendsDropdown extends StatelessWidget {
  const FriendsDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PopupMenuButton<int>(
        itemBuilder: (context) => [
          PopupMenuItem(
            child: Row(
              children: const [
                Icon(Icons.message_outlined),
                SizedBox(
                  width: 10,
                ),
                Text('Nhắn tin'),
              ],
            ),
          ),
          PopupMenuItem(
            child: Row(
              children: const [
                Icon(Icons.person_remove_outlined),
                SizedBox(
                  width: 10,
                ),
                Text('Hủy bạn bè'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
