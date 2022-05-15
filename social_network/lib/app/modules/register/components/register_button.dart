import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';

class RegisterButton extends StatefulWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  _RegisterButtonState createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: 200,
          height: 50,
          decoration: BoxDecoration(
            color: miniColor,
            border: Border.all(color: blackColor, width: 1),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Center(
            child: Text(
              'Đăng ký',
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
