import 'package:flutter/material.dart';

class FriendsButton extends StatefulWidget {
  const FriendsButton({Key? key}) : super(key: key);

  @override
  _FriendsButtonState createState() => _FriendsButtonState();
}

class _FriendsButtonState extends State<FriendsButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(100, 40),
          ),
          child: Text('Kết bạn'),
          onPressed: () {},
        ),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(100, 40), primary: Colors.grey),
          child: Text('Xóa'),
          onPressed: () {},
        ),
      ],
    ));
  }
}
