import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';
import 'package:social_network/app/core/values/images.dart';
import 'package:social_network/app/modules/login/components/login_button.dart';
import 'package:social_network/app/modules/login/components/login_footer.dart';
import 'package:social_network/app/modules/login/components/login_form.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);
  TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: miniColor),
            child: Center(
                child: Image.asset(
              logo,
              width: 100,
              height: 100,
            )),
          ),
          const SizedBox(
            height: 50,
          ),
          const LoginForm(),
          const SizedBox(
            height: 5,
          ),
          const LoginButton(),
          const SizedBox(
            height: 20,
          ),
          const LoginFooter(),
        ]),
      ),
    );
  }
}
