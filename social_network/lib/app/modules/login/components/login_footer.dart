import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:social_network/app/core/values/colors.dart';
import 'package:social_network/app/modules/login/components/login_google.dart';
import 'package:social_network/app/modules/login/login_page.dart';
import 'package:social_network/app/modules/register/register_page.dart';

class LoginFooter extends StatefulWidget {
  const LoginFooter({Key? key}) : super(key: key);

  @override
  _LoginFooterState createState() => _LoginFooterState();
}

class _LoginFooterState extends State<LoginFooter> {
  @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Bạn có tài khoản chưa?'),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(CupertinoPageRoute(builder: (_) => RegisterPage()));
                },
                child: const Text(
                  ' Đăng ký',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Đăng nhập với'),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  ' Google',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
