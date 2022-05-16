import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';
import 'package:social_network/app/modules/forgot/components/forgot_input.dart';
import 'package:social_network/app/modules/forgot/verification_page.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: blackColor,
            ),
          ),
          elevation: 0,
          backgroundColor: miniColor,
          title: const Text(
            'Quên mật khẩu',
            style: TextStyle(color: blackColor, fontSize: 24),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Center(
          child: Column(
            children: [
              ForgotInput(),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        CupertinoPageRoute(builder: (_) => VerificationPage()));
                  },
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
                        'Tiếp tục',
                        style: TextStyle(
                          color: blackColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ))));
  }
}
