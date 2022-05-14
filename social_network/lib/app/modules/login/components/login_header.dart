import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 100, left: 50),
          child: const Text(
            'Welcome To,',
            style: TextStyle(
                fontSize: 24, color: blackColor, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 50, top: 10),
          child: const Text(
            'CKC Social Network',
            style: TextStyle(
                fontSize: 24, color: blueColor, fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}
