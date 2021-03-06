import 'package:flutter/material.dart';
import 'package:social_network/app/core/values/colors.dart';
import 'package:social_network/app/modules/register/components/register_button.dart';
import 'package:social_network/app/modules/register/components/register_form.dart';

class RegisterFormList extends StatelessWidget {
  List<TextEditingController> controllerText = [];
  RegisterFormList({Key? key, required this.controllerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 350,
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: backgroundColor,
        shape: BoxShape.rectangle,
      ),
      child: Column(
        children: [
          RegisterForm(
              hintText: 'Email',
              icon: const Icon(
                Icons.email,
                color: blackColor,
              ),
              isHideText: false,
              isNumberText: false,
              controller: controllerText[0]),
          RegisterForm(
              hintText: 'Mật khẩu',
              icon: const Icon(
                Icons.lock,
                color: blackColor,
              ),
              isHideText: true,
              isNumberText: false,
              controller: controllerText[1]),
          RegisterForm(
              hintText: 'Xác nhận mật khẩu',
              icon: const Icon(
                Icons.lock,
                color: blackColor,
              ),
              isHideText: true,
              isNumberText: false,
              controller: controllerText[3]),
          const SizedBox(
            height: 10,
          ),
          const RegisterButton(),
        ],
      ),
    );
  }
}
