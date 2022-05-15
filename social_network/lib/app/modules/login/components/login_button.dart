import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            color: miniColor,
            border: Border.all(color: blackColor, width: 1),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Center(
            child: Text(
              'Login',
              style: TextStyle(
                color: blackColor,
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
