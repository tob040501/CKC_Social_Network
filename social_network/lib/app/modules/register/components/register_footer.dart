import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';
import 'package:social_network/app/modules/login/login_page.dart';

class RegisterFooter extends StatelessWidget {
  const RegisterFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Bạn đã có tài khoản'),
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(CupertinoPageRoute(builder: (_) => LoginPage()));
          },
          child: const Text(
            ' Đăng nhập!',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: blackColor,
            ),
          ),
        ),
      ],
    );
  }
}
