import 'dart:async';

import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';
import 'package:social_network/app/core/values/images.dart';
import 'package:social_network/app/modules/login/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    var duration = const Duration(seconds: 3);
    // Timer(
    //     duration,
    //     () => Navigator.pushReplacement(context,
    //         MaterialPageRoute(builder: (context) => const LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            //decoration: const BoxDecoration(color: backgroundColor),
            child: Center(
                child: Column(
      children: [
        Expanded(
          flex: 2,
          child: Image.asset(
            'assets/images/hihi.jpg',
            color: Colors.white,
            height: 100,
          ),
        ),
      ],
    ))));
  }
}
