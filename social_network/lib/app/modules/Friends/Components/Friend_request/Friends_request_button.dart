import 'package:flutter/material.dart';

class FriendsRequestButton extends StatefulWidget {
  const FriendsRequestButton({Key? key}) : super(key: key);

  @override
  _FriendsRequestButtonState createState() => _FriendsRequestButtonState();
}

class _FriendsRequestButtonState extends State<FriendsRequestButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(100, 40),
          ),
          child: Text('chấp nhận'),
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
